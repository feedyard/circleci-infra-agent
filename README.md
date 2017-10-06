[![CircleCI](https://circleci.com/gh/feedyard/circleci-infra-agent.svg?style=shield)](https://circleci.com/gh/feedyard/circleci-infra-agent)
[![Docker Repository on Quay](https://quay.io/repository/feedyard/circleci-infra-agent/status "Docker Repository on Quay")](https://quay.io/repository/feedyard/circleci-infra-agent)
# circleci-infra-agent
Docker image for circle-ci infrastructure pipelines

#### Supported IaaS

AWS

#### IaC packages

**testing**  
inspec (1.35)  
awspec (0.81)    

**build/deploy**  
docker (17.05)
docker-compose (1.16)  
packer (1.1.0)
terraform (0.10.7)  
boto3 (1.4.7)  
aws-cli (1.11)  
kops (1.7.0)  
kubectl (1.7.0)  


###### note
Dockerfile currently pulls packages from public sources. Depending on your security profile this may not be appropriate - consider deploying local mirrors for managing package validation and security.