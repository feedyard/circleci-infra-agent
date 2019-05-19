FROM quay.io/feedyard/circleci-base-agent:4.4.2

LABEL maintainer=<nic.cheneweth@thoughtworks.com>

ENV JSON_VERSION=2.2.0
ENV AWSPEC_VERSION=1.17.4
ENV TEST_KITCHEN_VERSION=2.2.5
ENV KITCHEN_TERRAFORM_VERSION=4.8.1
ENV KITCHEN_EC2_VERSION=3.0.1
ENV KITCHEN_GOOGLE_VERSION=2.0.1
ENV CHAMBER_VERSION=2.3.3

# infrastructure specific build, deploy, test tools
RUN apk add --no-cache --virtual build-dependencies \
        build-base=0.5-r1 \
        ruby-dev=2.5.5-r0 \
        make=4.2.1-r2 && \
    pip install \
        boto3=1.9.151 \
        awscli=1.16.161 \
        argparse=1.4.0 \
        jinja2=2.10.1 && \
    echo "gem: --no-document" > /etc/gemrc && \
    gem install \
        json:${JSON_VERSION} \
        awspec:${AWSPEC_VERSION} \
        test-kitchen:${TEST_KITCHEN_VERSION} \
        kitchen-terraform:${KITCHEN_TERRAFORM_VERSION} \
        kitchen-ec2:${KITCHEN_EC2_VERSION} \
        kitchen-google:${KITCHEN_GOOGLE_VERSION} && \
    curl -LOs https://github.com/segmentio/chamber/releases/download/v${CHAMBER_VERSION}/chamber-v${CHAMBER_VERSION}-linux-amd64 > chamber-v${CHAMBER_VERSION}-linux-amd64 && \
    chmod +x chamber-v${CHAMBER_VERSION}-linux-amd64 && \
    mv chamber-v${CHAMBER_VERSION}-linux-amd64 /usr/bin/chamber && \
    apk del build-dependencies

# hashicorp
ENV TERRAFORM_VERSION=0.11.14
ENV TERRAFORM_SHA256SUM=9b9a4492738c69077b079e595f5b2a9ef1bc4e8fb5596610f69a6f322a8af8dd

RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENV PACKER_VERSION=1.4.1
ENV PACKER_SHA256SUM=b713ea79a6fb131e27d65ec3f2227f36932540e71820288c3c5ad770b565ecd7

RUN curl https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip > packer_${PACKER_VERSION}_linux_amd64.zip && \
    echo "${PACKER_SHA256SUM}  packer_${PACKER_VERSION}_linux_amd64.zip" > packer_${PACKER_VERSION}_SHA256SUMS && \
    sha256sum -cs packer_${PACKER_VERSION}_SHA256SUMS && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f packer_${PACKER_VERSION}_linux_amd64.zip

# Google Cloud Platform
ENV CLOUD_SDK_VERSION=246.0.0

ENV PATH /google-cloud-sdk/bin:$PATH
RUN curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
    tar xzf google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
    rm google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
    ln -s /lib /lib64 && \
    gcloud config set core/disable_usage_reporting true && \
    gcloud config set component_manager/disable_update_check true && \
    gcloud config set metrics/environment github_docker_image && \
    gcloud info --run-diagnostics
    # must config gcloud auth login credentials to install additional components
    # gcloud auth login ...
    # gcloud components install alpha --quiet
VOLUME ["/root/.config"]

HEALTHCHECK NONE
