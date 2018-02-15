FROM feedyard/circleci-remote-docker

LABEL maintainer=<nic.cheneweth@thoughtworks.com>

RUN apk update && apk upgrade

# packages required for use as a circleci primary container
RUN apk add --no-cache jq groff less util-linux go

# infrastructure specific build, deploy, test tools
RUN pip install boto3 awscli argparse jinja2
RUN echo "gem: --no-document" > /etc/gemrc
RUN gem install awspec:1.4.1

# hashicorp
ENV TERRAFORM_VERSION=0.11.3
ENV TERRAFORM_SHA256SUM=6b8a7b83954597d36bbed23913dd51bc253906c612a070a21db373eab71b277b

RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip > terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    echo "${TERRAFORM_SHA256SUM}  terraform_${TERRAFORM_VERSION}_linux_amd64.zip" > terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    sha256sum -cs terraform_${TERRAFORM_VERSION}_SHA256SUMS && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENV PACKER_VERSION=1.2.0
ENV PACKER_SHA256SUM=d1b0fcc4e66dfe4919c25752d028a4e4466921bf0e3f75be3bbf1c85082e8040

RUN curl https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip > packer_${PACKER_VERSION}_linux_amd64.zip && \
    echo "${PACKER_SHA256SUM}  packer_${PACKER_VERSION}_linux_amd64.zip" > packer_${PACKER_VERSION}_SHA256SUMS && \
    sha256sum -cs packer_${PACKER_VERSION}_SHA256SUMS && \
    unzip packer_${PACKER_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -f packer_${PACKER_VERSION}_linux_amd64.zip

ENV KOPS_VERSION=1.8.1
ENV KUBECTL_VERSION=v1.9.3

ENV CONSUL_VERSION=1.0.6
ENV CONSUL_SHA256SUM=bcc504f658cef2944d1cd703eda90045e084a15752d23c038400cf98c716ea01

RUN curl -LO https://github.com/kubernetes/kops/releases/download/$KOPS_VERSION/kops-linux-amd64 && \
    chmod +x kops-linux-amd64 && \
    mv kops-linux-amd64 /usr/local/bin/kops

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl  && \
    mv ./kubectl /usr/local/bin/kubectl

RUN curl -SLO https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip > consul_${CONSUL_VERSION}_linux_amd64.zip && \
    echo "${CONSUL_SHA256SUM}  consul_${CONSUL_VERSION}_linux_amd64.zip" > consul_${CONSUL_VERSION}_SHA256SUMS && \
    sha256sum -cs consul_${CONSUL_VERSION}_SHA256SUMS && \
    unzip consul_${CONSUL_VERSION}_linux_amd64.zip -d /usr/local/bin && \
    rm -f consul_${CONSUL_VERSION}_linux_amd64.zip

HEALTHCHECK NONE