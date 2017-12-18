[![CircleCI](https://circleci.com/gh/feedyard/circleci-infra-agent.svg?style=shield)](https://circleci.com/gh/feedyard/circleci-infra-agent)
[![Docker Repository on Quay](https://quay.io/repository/feedyard/circleci-infra-agent/status "Docker Repository on Quay")](https://quay.io/repository/feedyard/circleci-infra-agent)
# circleci-infra-agent
Docker image for circle-ci infrastructure pipelines

#### Supported IaaS

AWS

#### IaC packages

**testing**  
inspec (1.48.0)  
awspec (1.0.0)    

**build/deploy**  
docker (17.10)
docker-compose (1.16)  
packer (1.1.2)
terraform (0.11.1)  
boto3 (1.4.7)  
aws-cli (1.14)  
kops (1.8.0)  
kubectl (1.8.4)  
consul (1.0.1)


###### note
Dockerfile currently pulls packages from public sources. Depending on your security profile this may not be appropriate - consider deploying local mirrors for managing package validation and security.