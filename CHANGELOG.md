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
kitchen-inspec=0.24.0  
kitchen-ec2=2.3.1  
kitchen-google=2.0.0  
terraform=0.11.9  
packer=1.3.1  
CLOUD_SDK_VERSION=221.0.0  
