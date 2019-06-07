# Change Log

### 06-07-2017 Initial build automation

alpine:3.6

Additional installed packages:
ca-certificates (20161130-r2)
git (2.13.0-r0)
gzip (1.8-r0)
openssh (7.5_p1-r1)
tar (1.29-r1)
curl (7.54.0-r0)
wget (1.19.1-r2)
openrc (0.24.1-r2)
openssl (1.0.2k-r0)
python3 (3.6.1-r2)
setuptools (36.0.1)
docker (17.05.0-r0)
docker-compose (1.13)

### 06-11-2017 add ruby and inspec for testing strategies

Additional installed packages:
ruby (2.4.1-r3)
ruby-bundler (1.15.0-r0)
ruby-dev (2.4.1-r3)
g++ (6.3.0-r4)
libffi-dev (3.2.1-r3)
musl-dev (1.1.16-r9)
make (4.2.1-r0)
gem install inspec -v 1.27.0

### 08-14-2017 patch//version update

version changes
git (2.13.5-r0)
curl (7.55.0-r0)
setuptools (36.2.7)
docker-compose (1.15)
musl-dev (1.1.16-r13)
gem install inspec -v 1.33.1

### 09-01-2017 redefine as infra-agent definition and move to new repo

### 12-17-2017 Alpine 3.7 update

...removing past package history with build process change

### 09-14-2018  alpine 3.8, on new base

alpine 3.8

boto3
awscli
argparse
jinja2
terraform
packer
gcloud SDK

awspec
test-kitchen
kitchen-insepc
kitchen-terraform
kitchen-ec2
kitchen-google

### 10-22-2018 package version changes and patch

test-kitchen=1.23.2
kitchen-terraform=4.0.3
kitchen-inspec=removed (does not support inspec v3)
kitchen-ec2=2.3.1
kitchen-google=2.0.0
terraform=0.11.9
packer=1.3.1
CLOUD_SDK_VERSION=221.0.0

### 10-23-2018 package version

terraform 0.11.10
packer 1.3.3
CLOUD_SDK_VERSION=228.0.0

### 01-02-2019 package version changes and patch

terraform 0.11.11
test-kitchen=1.24.0
kitchen-terraform=4.2.0
kitchen-ec2=2.4.0
kitcfhen-google=2.0.1

### 01-05-2019 base image change

quay.io/feedyard/circleci-base-agent:4.1.2

### 01-11-2019

gem json 2.1.0

### 01-25-2019 patch, package upgrade, add Chamber

quay.io/feedyard/circleci-base-agent:4.3.0
chamber (2.3.2)


### 04-05-2019 Publish version 4.4.0

Successfully installed
MarkupSafe-1.1.1
PyYAML-3.13
argparse-1.4.0
awscli-1.16.140
boto3-1.9.130
botocore-1.12.130
colorama-0.3.9
docutils-0.14
jinja2-2.10
jmespath-0.9.4
pyasn1-0.4.5
python-dateutil-2.8.0
rsa-3.4.2
s3transfer-0.2.0
urllib3-1.24.1

Successfully installed json-2.2.0
Successfully installed aws-partitions-1.149.0
Successfully installed aws-sdk-core-3.48.3
Successfully installed aws-sdk-acm-1.19.0
Successfully installed aws-sdk-acmpca-1.13.0
Successfully installed aws-sdk-apigateway-1.26.0
Successfully installed aws-sdk-alexaforbusiness-1.19.0
Successfully installed aws-sdk-amplify-1.3.0
Successfully installed aws-sdk-apigatewaymanagementapi-1.3.0
Successfully installed aws-sdk-apigatewayv2-1.4.0
Successfully installed aws-sdk-appmesh-1.6.0
Successfully installed aws-sdk-appstream-1.25.0
Successfully installed aws-sdk-appsync-1.12.0
Successfully installed aws-sdk-applicationautoscaling-1.22.0
Successfully installed aws-sdk-applicationdiscoveryservice-1.14.0
Successfully installed aws-sdk-athena-1.12.0
Successfully installed aws-sdk-autoscaling-1.20.0
Successfully installed aws-sdk-autoscalingplans-1.12.0
Successfully installed aws-sdk-backup-1.3.0
Successfully installed aws-sdk-batch-1.16.0
Successfully installed aws-sdk-budgets-1.18.0
Successfully installed aws-sdk-chime-1.6.0
Successfully installed aws-sdk-cloud9-1.11.0
Successfully installed aws-sdk-clouddirectory-1.14.0
Successfully installed aws-sdk-cloudformation-1.18.0
Successfully installed aws-sdk-cloudfront-1.15.0
Successfully installed aws-sdk-cloudhsm-1.12.0
Successfully installed aws-sdk-cloudhsmv2-1.12.0
Successfully installed aws-sdk-cloudsearch-1.9.0
Successfully installed aws-sdk-cloudsearchdomain-1.9.0
Successfully installed aws-sdk-cloudtrail-1.11.0
Successfully installed aws-sdk-cloudwatch-1.19.0
Successfully installed aws-sdk-cloudwatchevents-1.17.0
Successfully installed aws-sdk-cloudwatchlogs-1.17.0
Successfully installed aws-sdk-codebuild-1.32.0
Successfully installed aws-sdk-codecommit-1.17.0
Successfully installed aws-sdk-codedeploy-1.18.0
Successfully installed aws-sdk-codepipeline-1.15.0
Successfully installed aws-sdk-codestar-1.11.0
Successfully installed aws-sdk-cognitoidentity-1.10.0
Successfully installed aws-sdk-cognitoidentityprovider-1.16.0
Successfully installed aws-sdk-cognitosync-1.9.0
Successfully installed aws-sdk-comprehend-1.18.0
Successfully installed aws-sdk-comprehendmedical-1.3.0
Successfully installed aws-sdk-configservice-1.26.0
Successfully installed aws-sdk-connect-1.13.0
Successfully installed aws-sdk-costexplorer-1.21.0
Successfully installed aws-sdk-costandusagereportservice-1.10.0
Successfully installed aws-sdk-dax-1.11.0
Successfully installed aws-sdk-dlm-1.11.0
Successfully installed aws-sdk-datapipeline-1.9.0
Successfully installed aws-sdk-datasync-1.3.0
Successfully installed aws-sdk-databasemigrationservice-1.20.0
Successfully installed aws-sdk-devicefarm-1.19.0
Successfully installed aws-sdk-directconnect-1.16.0
Successfully installed aws-sdk-directoryservice-1.15.0
Successfully installed aws-sdk-docdb-1.4.0
Successfully installed aws-sdk-dynamodb-1.25.0
Successfully installed aws-sdk-dynamodbstreams-1.9.0
Successfully installed aws-sdk-ec2-1.78.0
Successfully installed aws-sdk-ecr-1.14.0
Successfully installed aws-sdk-ecs-1.36.0
Successfully installed aws-sdk-efs-1.13.0
Successfully installed aws-sdk-eks-1.15.0
Successfully installed aws-sdk-emr-1.14.0
Successfully installed aws-sdk-elasticache-1.14.0
Successfully installed aws-sdk-elasticbeanstalk-1.19.0
Successfully installed aws-sdk-elasticloadbalancing-1.12.0
Successfully installed aws-sdk-elasticloadbalancingv2-1.26.0
Successfully installed aws-sdk-elastictranscoder-1.11.0
Successfully installed aws-sdk-elasticsearchservice-1.19.0
Successfully installed aws-sdk-fms-1.12.0
Successfully installed aws-sdk-fsx-1.4.0
Successfully installed aws-sdk-firehose-1.14.0
Successfully installed aws-sdk-gamelift-1.15.0
Successfully installed aws-sdk-glacier-1.18.0
Successfully installed aws-sdk-globalaccelerator-1.4.0
Successfully installed aws-sdk-glue-1.30.0
Successfully installed aws-sdk-greengrass-1.17.0
Successfully installed aws-sdk-guardduty-1.14.0
Successfully installed aws-sdk-health-1.12.0
Successfully installed aws-sdk-iam-1.18.0
Successfully installed aws-sigv2-1.0.1
Successfully installed aws-sdk-importexport-1.9.0
Successfully installed aws-sdk-inspector-1.15.0
Successfully installed aws-sdk-iot-1.29.0
Successfully installed aws-sdk-iot1clickdevicesservice-1.11.0
Successfully installed aws-sdk-iot1clickprojects-1.10.0
Successfully installed aws-sdk-iotanalytics-1.16.0
Successfully installed aws-sdk-iotdataplane-1.9.0
Successfully installed aws-sdk-iotjobsdataplane-1.10.0
Successfully installed aws-sdk-kms-1.16.0
Successfully installed aws-sdk-kafka-1.3.0
Successfully installed aws-sdk-kinesis-1.13.1
Successfully installed aws-sdk-kinesisanalytics-1.12.0
Successfully installed aws-sdk-kinesisanalyticsv2-1.3.0
Successfully installed aws-sdk-kinesisvideo-1.12.0
Successfully installed aws-sdk-kinesisvideoarchivedmedia-1.11.0
Successfully installed aws-sdk-kinesisvideomedia-1.10.0
Successfully installed aws-sdk-lambda-1.21.0
Successfully installed aws-sdk-lambdapreview-1.9.0
Successfully installed aws-sdk-lex-1.12.0
Successfully installed aws-sdk-lexmodelbuildingservice-1.15.0
Successfully installed aws-sdk-licensemanager-1.3.0
Successfully installed aws-sdk-lightsail-1.18.0
Successfully installed aws-sdk-mq-1.12.0
Successfully installed aws-sdk-mturk-1.12.0
Successfully installed aws-sdk-machinelearning-1.10.0
Successfully installed aws-sdk-macie-1.9.0
Successfully installed aws-sdk-marketplacecommerceanalytics-1.9.0
Successfully installed aws-sdk-marketplaceentitlementservice-1.9.0
Successfully installed aws-sdk-marketplacemetering-1.11.0
Successfully installed aws-sdk-mediaconnect-1.4.0
Successfully installed aws-sdk-mediaconvert-1.25.0
Successfully installed aws-sdk-medialive-1.28.0
Successfully installed aws-sdk-mediapackage-1.15.0
Successfully installed aws-sdk-mediastore-1.12.0
Successfully installed aws-sdk-mediastoredata-1.11.0
Successfully installed aws-sdk-mediatailor-1.13.0
Successfully installed aws-sdk-migrationhub-1.11.0
Successfully installed aws-sdk-mobile-1.9.0
Successfully installed aws-sdk-neptune-1.11.0
Successfully installed aws-sdk-opsworks-1.13.0
Successfully installed aws-sdk-opsworkscm-1.16.0
Successfully installed aws-sdk-organizations-1.22.0
Successfully installed aws-sdk-pi-1.9.0
Successfully installed aws-sdk-pinpoint-1.19.0
Successfully installed aws-sdk-pinpointemail-1.6.0
Successfully installed aws-sdk-pinpointsmsvoice-1.6.0
Successfully installed aws-sdk-polly-1.18.0
Successfully installed aws-sdk-pricing-1.9.0
Successfully installed aws-sdk-quicksight-1.5.0
Successfully installed aws-sdk-ram-1.4.0
Successfully installed aws-sdk-rds-1.48.0
Successfully installed aws-sdk-rdsdataservice-1.4.0
Successfully installed aws-sdk-redshift-1.22.0
Successfully installed aws-sdk-rekognition-1.22.0
Successfully installed aws-sdk-resourcegroups-1.13.0
Successfully installed aws-sdk-resourcegroupstaggingapi-1.9.0
Successfully installed aws-sdk-robomaker-1.5.0
Successfully installed aws-sdk-route53-1.21.0
Successfully installed aws-sdk-route53domains-1.11.0
Successfully installed aws-sdk-route53resolver-1.4.0
Successfully installed aws-sdk-s3-1.36.0
Successfully installed aws-sdk-s3control-1.4.0
Successfully installed aws-sdk-ses-1.18.0
Successfully installed aws-sdk-sms-1.10.0
Successfully installed aws-sdk-sns-1.12.0
Successfully installed aws-sdk-sqs-1.13.0
Successfully installed aws-sdk-ssm-1.42.0
Successfully installed aws-sdk-swf-1.9.0
Successfully installed aws-sdk-sagemaker-1.33.0
Successfully installed aws-sdk-sagemakerruntime-1.10.0
Successfully installed aws-sdk-secretsmanager-1.24.0
Successfully installed aws-sdk-securityhub-1.4.0
Successfully installed aws-sdk-serverlessapplicationrepository-1.15.0
Successfully installed aws-sdk-servicecatalog-1.20.0
Successfully installed aws-sdk-servicediscovery-1.12.0
Successfully installed aws-sdk-shield-1.13.0
Successfully installed aws-sdk-signer-1.9.0
Successfully installed aws-sdk-simpledb-1.9.0
Successfully installed aws-sdk-snowball-1.14.0
Successfully installed aws-sdk-states-1.14.0
Successfully installed aws-sdk-storagegateway-1.19.0
Successfully installed aws-sdk-support-1.9.0
Successfully installed aws-sdk-textract-1.3.0
Successfully installed aws-sdk-transcribeservice-1.18.0
Successfully installed aws-sdk-transcribestreamingservice-1.1.0
Successfully installed aws-sdk-transfer-1.5.0
Successfully installed aws-sdk-translate-1.11.0
Successfully installed aws-sdk-waf-1.16.0
Successfully installed aws-sdk-wafregional-1.17.0
Successfully installed aws-sdk-workdocs-1.12.0
Successfully installed aws-sdk-worklink-1.3.0
Successfully installed aws-sdk-workmail-1.11.0
Successfully installed aws-sdk-workspaces-1.16.0
Successfully installed aws-sdk-xray-1.13.0
Successfully installed aws-sdk-resources-3.41.0
Successfully installed aws-sdk-3.0.1
Successfully installed aws_config-0.1.0
Successfully installed awsecrets-1.14.0
Successfully installed dry-inflector-0.1.2
Successfully installed ipaddress-0.8.3
Successfully installed awspec-1.17.3
Successfully installed net-ssh-gateway-2.0.0
Successfully installed mixlib-versioning-1.2.7
Successfully installed mixlib-install-3.11.11
Successfully installed winrm-elevated-1.1.1
Successfully installed test-kitchen-2.0.1
Successfully installed dry-core-0.4.7
Successfully installed dry-configurable-0.8.2
Successfully installed dry-container-0.7.0
Successfully installed dry-equalizer-0.2.2
Successfully installed dry-logic-0.6.0
Successfully installed dry-types-0.14.1
Successfully installed dry-validation-0.13.1
Successfully installed net-ssh-4.2.0
Successfully installed net-ssh-gateway-1.3.0
Successfully installed test-kitchen-1.24.0
Successfully installed tty-which-0.4.0
Successfully installed kitchen-terraform-4.3.0
Successfully installed retryable-2.0.4
Successfully installed kitchen-ec2-2.5.0
Successfully installed gcewinpass-1.1.0
Successfully installed kitchen-google-2.0.1

TERRAFORM_VERSION=0.11.13
PACKER_VERSION=1.3.5
CLOUD_SDK_VERSION=241.0.0

### 05-18-2019 package updates

terraform 0.11.14
GCLOUS SDK 246.0.0
packer 1.4.1

### 06-07-2019 new base image, package updates

feedyard/circleci-base-agent:4.5.0
awscli 1.16.164
boto3 1.9.164
