[![CircleCI](https://circleci.com/gh/feedyard/circleci-infra-agent.svg?style=shield)](https://circleci.com/gh/feedyard/circleci-infra-agent)
# circleci-infra-agent
Docker image for circle-ci infrastructure pipelines

#### Supported IaaS

AWS

#### IaC packages

**testing**<br />
inspec<br />
awspec<br /><br />

**build/deploy**<br />
docker-compose<br />
terraform<br />
boto3<br />
aws-cli<br /><br />

###### note
Dockerfile currently pulls packages from public sources. Depending on your security profile this may not be appropriate - consider deploying local mirrors for managing package validation and security.