FROM quay.io/feedyard/circleci-base-agent:3.8.4

LABEL maintainer=<nic.cheneweth@thoughtworks.com>

ENV AWSPEC_VERSION=1.9.0
ENV TEST_KITCHEN_VERSION=1.23.2
ENV KITCHEN_TERRAFORM_VERSION=4.0.0
ENV KITCHEN_INSPEC_VERSION=0.23.1
ENV KITCHEN_EC2_VERSION=2.2.2
ENV KITCHEN_GOOGLE_VERSION=1.5.0

# packages required for use as a circleci primary container
# RUN apk add --no-cache groff less util-linux go

# infrastructure specific build, deploy, test tools
RUN pip install \
    boto3 \
    awscli \
    argparse \
    jinja2
RUN echo "gem: --no-document" > /etc/gemrc
RUN gem install \
    awspec:${AWSPEC_VERSION} \
    test-kitchen:${TEST_KITCHEN_VERSION} \
    kitchen-terraform:${KITCHEN_TERRAFORM_VERSION} \
    kitchen-inspec:${KITCHEN_INSPEC_VERSION} \
    kitchen-ec2:${KITCHEN_EC2_VERSION} \
    kitchen-google:${KITCHEN_GOOGLE_VERSION}

# hashicorp
ENV TERRAFORM_VERSION=0.11.8
ENV TERRAFORM_SHA256SUM=84ccfb8e13b5fce63051294f787885b76a1fedef6bdbecf51c5e586c9e20c9b7

RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENV PACKER_VERSION=1.2.5
ENV PACKER_SHA256SUM=bc58aa3f3db380b76776e35f69662b49f3cf15cf80420fc81a15ce971430824c

RUN curl https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip > packer_${PACKER_VERSION}_linux_amd64.zip && \
    echo "${PACKER_SHA256SUM}  packer_${PACKER_VERSION}_linux_amd64.zip" > packer_${PACKER_VERSION}_SHA256SUMS && \
    sha256sum -cs packer_${PACKER_VERSION}_SHA256SUMS && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f packer_${PACKER_VERSION}_linux_amd64.zip

# Google Cloud Platform
ENV CLOUD_SDK_VERSION=214.0.0

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