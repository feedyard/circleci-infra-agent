[![CircleCI](https://circleci.com/gh/feedyard/circleci-infra-agent.svg?style=shield)](https://circleci.com/gh/feedyard/circleci-infra-agent)
[![Docker Repository on Quay](https://quay.io/repository/feedyard/circleci-infra-agent/status "Docker Repository on Quay")](https://quay.io/repository/feedyard/circleci-infra-agent)
# circleci-infra-agent
Docker image for circle-ci infrastructure pipelines

#### Supported IaaS

AWS

#### IaC packages

**testing**  
inspec 
awspec     

**build/deploy**  
docker  
docker-compose   
packer   
terraform   
boto3   
aws-cli   
kops   
kubectl   
consul   


###### note
Dockerfile currently pulls packages from public sources. Depending on your security profile this may not be appropriate.
Consider deploying local mirrors for managing package validation and security.