FROM quay.io/feedyard/circleci-base-agent:4.10.0

LABEL maintainer=<nic.cheneweth@thoughtworks.com>

ENV JSON_VERSION=2.2.0
ENV AWSPEC_VERSION=1.17.4
ENV TEST_KITCHEN_VERSION=2.2.5
ENV KITCHEN_EC2_VERSION=3.0.1
ENV KITCHEN_GOOGLE_VERSION=2.0.1
ENV CHAMBER_VERSION=2.3.3
ENV AWS_IAM_AUTHENTICATOR_VERSION=1.13.7
ENV AWS_IAM_AUTHENTICATOR_RELEASE_DATE=2019-06-11
ENV TFLINT_VERSION=0.9.1

# infrastructure specific build, deploy, test tools
RUN apk add --no-cache --virtual build-dependencies \
        build-base=0.5-r1 \
        ruby-dev=2.5.5-r0 \
        make=4.2.1-r2 && \
    pip install \
        boto3==1.9.190 \
        awscli==1.16.200 \
        argparse==1.4.0 \
        jinja2==2.10.1 && \
    echo "gem: --no-document" > /etc/gemrc && \
    gem install \
        json:${JSON_VERSION} \
        awspec:${AWSPEC_VERSION} \
        test-kitchen:${TEST_KITCHEN_VERSION} \
        kitchen-ec2:${KITCHEN_EC2_VERSION} \
        kitchen-google:${KITCHEN_GOOGLE_VERSION} && \
    curl -LOs https://github.com/segmentio/chamber/releases/download/v${CHAMBER_VERSION}/chamber-v${CHAMBER_VERSION}-linux-amd64 > chamber-v${CHAMBER_VERSION}-linux-amd64 && \
    chmod +x chamber-v${CHAMBER_VERSION}-linux-amd64 && \
    mv chamber-v${CHAMBER_VERSION}-linux-amd64 /usr/bin/chamber && \
    curl -SLO https://amazon-eks.s3-us-west-2.amazonaws.com/${AWS_IAM_AUTHENTICATOR_VERSION}/${AWS_IAM_AUTHENTICATOR_RELEASE_DATE}/bin/linux/amd64/aws-iam-authenticator && \
    chmod +x aws-iam-authenticator && \
    mv aws-iam-authenticator /usr/bin && \
    curl -SLO https://github.com/wata727/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_amd64.zip > tflint_linux_amd64.zip && \
    unzip tflint_linux_amd64.zip -d /usr/bin && \
    apk del build-dependencies

# hashicorp
ENV TERRAFORM_VERSION=0.12.5
ENV TERRAFORM_SHA256SUM=babb4a30b399fb6fc87a6aa7435371721310c2e2102a95a763ef2c979ab06ce2

RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENV PACKER_VERSION=1.4.2
ENV PACKER_SHA256SUM=2fcbd1662ac76dc4dec381bdc7b5e6316d5b9d48e0774a32fe6ef9ec19f47213

RUN curl https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip > packer_${PACKER_VERSION}_linux_amd64.zip && \
    echo "${PACKER_SHA256SUM}  packer_${PACKER_VERSION}_linux_amd64.zip" > packer_${PACKER_VERSION}_SHA256SUMS && \
    sha256sum -cs packer_${PACKER_VERSION}_SHA256SUMS && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f packer_${PACKER_VERSION}_linux_amd64.zip

# Google Cloud Platform
#ENV CLOUD_SDK_VERSION=254.0.0
#
#ENV PATH /google-cloud-sdk/bin:$PATH
#RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
#    tar xzf google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
#    rm google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
#    ln -s /lib /lib64 && \
#    gcloud config set core/disable_usage_reporting true && \
#    gcloud config set component_manager/disable_update_check true && \
#    gcloud config set metrics/environment github_docker_image && \
#    gcloud info --run-diagnostics
#    # must config gcloud auth login credentials to install additional components
#    # gcloud auth login ...
#    # gcloud components install alpha --quiet
#VOLUME ["/root/.config"]

HEALTHCHECK NONE
