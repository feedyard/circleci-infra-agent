FROM quay.io/feedyard/circleci-base-agent:4.1.2

LABEL maintainer=<nic.cheneweth@thoughtworks.com>

ENV JSON_VERSION=2.1.0
ENV AWSPEC_VERSION=1.13.0
ENV TEST_KITCHEN_VERSION=1.24.0
ENV KITCHEN_TERRAFORM_VERSION=4.2.0
ENV KITCHEN_EC2_VERSION=2.4.0
ENV KITCHEN_GOOGLE_VERSION=2.0.1

# infrastructure specific build, deploy, test tools
RUN apk add --virtual build-dependencies \
        build-base \
        ruby-dev \
        make && \
RUN pip install \
        boto3 \
        awscli \
        argparse \
        jinja2
RUN echo "gem: --no-document" > /etc/gemrc
RUN gem install \
        json:${JSON_VERSION} \
        awspec:${AWSPEC_VERSION} \
        test-kitchen:${TEST_KITCHEN_VERSION} \
        kitchen-terraform:${KITCHEN_TERRAFORM_VERSION} \
        kitchen-ec2:${KITCHEN_EC2_VERSION} \
        kitchen-google:${KITCHEN_GOOGLE_VERSION} &&\
    apk del build-dependencies

# hashicorp
ENV TERRAFORM_VERSION=0.11.11
ENV TERRAFORM_SHA256SUM=94504f4a67bad612b5c8e3a4b7ce6ca2772b3c1559630dfd71e9c519e3d6149c

RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENV PACKER_VERSION=1.3.3
ENV PACKER_SHA256SUM=2e3ea8f366d676d6572ead7e0c773158dfea0aed9c6a740c669d447bcb48d65f

RUN curl https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip > packer_${PACKER_VERSION}_linux_amd64.zip && \
    echo "${PACKER_SHA256SUM}  packer_${PACKER_VERSION}_linux_amd64.zip" > packer_${PACKER_VERSION}_SHA256SUMS && \
    sha256sum -cs packer_${PACKER_VERSION}_SHA256SUMS && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f packer_${PACKER_VERSION}_linux_amd64.zip

# Google Cloud Platform
ENV CLOUD_SDK_VERSION=228.0.0

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