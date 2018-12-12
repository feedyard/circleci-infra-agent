[![CircleCI](https://circleci.com/gh/feedyard/circleci-infra-agent.svg?style=shield)](https://circleci.com/gh/feedyard/circleci-infra-agent)
[![Docker Repository on Quay](https://quay.io/repository/feedyard/circleci-infra-agent/status "Docker Repository on Quay")](https://quay.io/repository/feedyard/circleci-infra-agent)
# feedyard/circleci-base-agent

circleci primary container, based on feedyard/circleci-base-agent. includes common tools for buildiing and testing     
aws or gcp infrastructure as code in circleci pipelines.  

infrastructure development:
packer  
terraform    
aws-cli  
boto3
gcloud

testing or other frameworks:
awspec  
test-kitchen  
kitchen-terraform  
kitchen-ec2  
kitchen-google  
jinja2  
  
See CHANGELOG for list of installed packages/versions  

## requirements for ci and local development

Environment variable FEEDYARD_PIPELINE_KEY used as encrypt/decrypt key for required secrets. Set matching var in  
circleci repository and include local file `local.env` with the following access information.  

```$xslt
DOCKER_LOGIN=FEEDYARD_CIRCLECI_QUAYIO_DEPLOY_USER
DOCKER_PASSWORD=FEEDYARD_CIRCLECI_QUAYIO_DEPLOY_USER_TOKEN
```

run (or review) `prereqs.sh` to install requirements for local development.  
