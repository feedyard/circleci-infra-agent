[![CircleCI](https://circleci.com/gh/feedyard/circleci-infra-agent.svg?style=shield)](https://circleci.com/gh/feedyard/circleci-infra-agent)
[![Docker Repository on Quay](https://quay.io/repository/feedyard/circleci-infra-agent/status "Docker Repository on Quay")](https://quay.io/repository/feedyard/circleci-infra-agent)
# circleci-infra-agent
Docker image for circle-ci infrastructure pipelines

#### Supported IaaS

AWS

#### IaC packages

**testing**<br />
inspec (1.35)<br />
awspec (0.81)<br /><br />

**build/deploy**<br />
docker (17.05)
docker-compose (1.15)<br />
packer (1.0.4)
terraform (0.10)<br />
boto3 (1.4.7)<br />
aws-cli (1.11)<br />
kops (1.7.0)<br />
kubectl (1.7.0)<br />


###### note
Dockerfile currently pulls packages from public sources. Depending on your security profile this may not be appropriate - consider deploying local mirrors for managing package validation and security.