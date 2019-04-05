#FROM quay.io/feedyard/circleci-base-agent:4.4.1
FROM local/circleci-base-agent:latest

LABEL maintainer=<nic.cheneweth@thoughtworks.com>

ENV JSON_VERSION=2.2.0
ENV AWSPEC_VERSION=1.17.3
ENV TEST_KITCHEN_VERSION=2.0.1
ENV KITCHEN_TERRAFORM_VERSION=4.3.0
ENV KITCHEN_EC2_VERSION=2.5.0
ENV KITCHEN_GOOGLE_VERSION=2.0.1
ENV CHAMBER_VERSION=2.3.2

# infrastructure specific build, deploy, test tools
RUN apk add --no-cache --virtual build-dependencies \
        build-base \
        ruby-dev \
        make && \
    pip install \
        boto3=1.9.130 \
        awscli=1.16.140 \
        argparse=1.4.0 \
        jinja2=2.10 && \
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
ENV TERRAFORM_VERSION=0.11.13
ENV TERRAFORM_SHA256SUM=5925cd4d81e7d8f42a0054df2aafd66e2ab7408dbed2bd748f0022cfe592f8d2

RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENV PACKER_VERSION=1.3.5
ENV PACKER_SHA256SUM=14922d2bca532ad6ee8e936d5ad0788eba96f773bcdcde8c2dc7c95f830841ec

RUN curl https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip > packer_${PACKER_VERSION}_linux_amd64.zip && \
    echo "${PACKER_SHA256SUM}  packer_${PACKER_VERSION}_linux_amd64.zip" > packer_${PACKER_VERSION}_SHA256SUMS && \
    sha256sum -cs packer_${PACKER_VERSION}_SHA256SUMS && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f packer_${PACKER_VERSION}_linux_amd64.zip

# Google Cloud Platform
ENV CLOUD_SDK_VERSION=241.0.0

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
