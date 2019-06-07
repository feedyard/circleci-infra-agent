# feedyard/circleci-infra-agent [![CircleCI](https://circleci.com/gh/feedyard/circleci-infra-agent.svg?style=svg)](https://circleci.com/gh/feedyard/circleci-infra-agent) [![Docker Repository on Quay](https://quay.io/repository/feedyard/circleci-infra-agent/status "Docker Repository on Quay")](https://quay.io/repository/feedyard/circleci-infra-agent) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/feedyard/circleci-infra-agent/master/LICENSE) [![Base Image](https://img.shields.io/badge/FROM-alpine-blue.svg)](https://alpinelinux.org)

Based on [feedyard/circleci-base-agent](https://github.com/feedyard/circleci-base-agent). includes common tools for buildiing and testing
aws or gcp infrastructure as code in circleci pipelines.

apk/bin   | gem            | pip
----------|----------------|----
terraform | json           | boto3
packer    | awspec         | awscli
gcloud    | test-kitchen   | argparse
chamber   | kitchen-ec2    | jinja2
          | kitchen-google |

See CHANGELOG for list of installed packages/versions
