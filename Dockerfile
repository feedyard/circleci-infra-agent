FROM alpine:3.6

MAINTAINER Nic Cheneweth <nic.cheneweth@thoughtworks.com>

RUN apk update && apk upgrade

# packages required for use as a circleci primary container
RUN apk add --no-cache git openssh tar gzip ca-certificates

# general packages to support IaC oriented docker images
RUN apk add --no-cache bash bash-doc bash-completion curl wget \
    openssl openrc python3 ruby ruby-bundler ruby-dev g++ libffi-dev \
    musl-dev make docker
RUN rc-update add docker boot

RUN python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    rm -r /root/.cache

# infrastructure specific build, deploy, test tools
RUN pip install docker-compose invoke boto3 awscli
RUN echo "gem: --no-document" > /etc/gemrc
RUN gem install inspec:1.40.0 awspec:0.87.0

# hashicorp
ENV TERRAFORM_VERSION=0.10.7
ENV TERRAFORM_SHA256SUM=8fb5f587fcf67fd31d547ec53c31180e6ab9972e195905881d3dddb8038c5a37

RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENV PACKER_VERSION=1.1.0
ENV PACKER_SHA256SUM=bd1eddfa114f7e6258ef3419613380297f1b4e438f5bae92f1177150519be934

RUN curl https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip > packer_${PACKER_VERSION}_linux_amd64.zip && \
    echo "${PACKER_SHA256SUM}  packer_${PACKER_VERSION}_linux_amd64.zip" > packer_${PACKER_VERSION}_SHA256SUMS && \
    sha256sum -cs packer_${PACKER_VERSION}_SHA256SUMS && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f packer_${PACKER_VERSION}_linux_amd64.zip

# kubernetes
ENV KUBECTL_VERSION=1.7.0

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/bin/kubectl

ENV KOPS_VERSION=1.7.0

RUN curl -LO https://github.com/kubernetes/kops/releases/download/${KOPS_VERSION}/kops-linux-amd64 && \
    chmod +x kops-linux-amd64 && \
    mv kops-linux-amd64 /usr/local/bin/kops

HEALTHCHECK NONE