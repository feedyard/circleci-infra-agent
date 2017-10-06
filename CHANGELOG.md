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

alpine:3.6

*apk update & upgrade version changes
musl (1.1.16-r10 -> 1.1.16-r13)
busybox (1.26.2-r5 -> 1.26.2-r6)
libressl2.5-libcrypto (2.5.4-r0 -> 2.5.5-r0)
libressl2.5-libssl (2.5.4-r0 -> 2.5.5-r0)
musl-utils (1.1.16-r10 -> 1.1.16-r13)

*Additional installed packages
ca-certificates (20161130-r2)
libssh2 (1.8.0-r1)
libcurl (7.55.0-r0)
expat (2.2.0-r1)
pcre (8.41-r0)
git (2.13.5-r0)
gzip (1.8-r0)
openssh-keygen (7.5_p1-r1)
openssh-client (7.5_p1-r1)
openssh-sftp-server (7.5_p1-r1)
openssh-server (7.5_p1-r1)
openssh (7.5_p1-r1)
tar (1.29-r1)
ncurses-terminfo-base (6.0-r8)
ncurses-terminfo (6.0-r8)
ncurses-libs (6.0-r8)
readline (6.3.008-r5)
bash (4.3.48-r1)
bash-completion (2.4-r0)
bash-doc (4.3.48-r1)
curl (7.55.0-r0)
libmnl (1.0.4-r0)
libnftnl-libs (1.0.7-r0)
iptables (1.6.1-r0)
device-mapper-libs (2.02.168-r3)
libseccomp (2.3.2-r0)
docker (17.05.0-r0)
docker-bash-completion (17.05.0-r0)
libgcc (6.3.0-r4)
libstdc++ (6.3.0-r4)
binutils-libs (2.28-r2)
binutils (2.28-r2)
gmp (6.1.2-r0)
isl (0.17.1-r0)
libgomp (6.3.0-r4)
libatomic (6.3.0-r4)
pkgconf (1.3.7-r0)
mpfr3 (3.1.5-r0)
mpc1 (1.0.3-r0)
gcc (6.3.0-r4)
musl-dev (1.1.16-r13)
libc-dev (0.7.1-r0)
g++ (6.3.0-r4)
git-bash-completion (2.13.5-r0)
libffi (3.2.1-r3)
libffi-dev (3.2.1-r3)
make (4.2.1-r0)
openrc (0.24.1-r2)
libcrypto1.0 (1.0.2k-r0)
libssl1.0 (1.0.2k-r0)
openssl (1.0.2k-r0)
libbz2 (1.0.6-r5)
gdbm (1.12-r0)
xz-libs (5.2.3-r0)
sqlite-libs (3.18.0-r0)
python3 (3.6.1-r2)
yaml (0.1.7-r0)
ruby-libs (2.4.1-r3)
ruby (2.4.1-r3)
ruby-io-console (2.4.1-r3)
ruby-bundler (1.15.0-r0)
libgmpxx (6.1.2-r0)
gmp-dev (6.1.2-r0)
ruby-dev (2.4.1-r3)
wget (1.19.1-r2)
pip3 (9.0.1)
setuptools (36.4.0)
docker-compose (1.16.1)

*pip3 packages
texttable (0.9.1)
websocket_client (0.44.0)
PyYAML (3.12)
jsonschema (2.6.0)
six (1.10.0)
docopt (0.6.2)
docker (2.5.1)
cached_property (1.3.0)
requests (2.11.1)
dockerpty (0.4.1)
docker_pycreds (0.2.1)
invoke (0.20.3)
s3transfer-0.1.11
jmespath-0.9.3
botocore-1.7.3
python_dateutil-2.6.1
docutils-0.14
boto3-1.4.7

*ruby gems
 json-2.1.0
 mixlib-shellout-2.3.2
 net-ssh-4.1.0
 net-scp-1.2.1
 ffi-1.9.18
 gssapi-1.2.0
 httpclient-2.8.3
 rubyntlm-0.6.2
 little-plugger-1.1.4
 multi_json-1.12.1
 logging-2.2.2
 nori-2.6.0
 builder-3.2.3
 gyoku-1.3.1
 erubis-2.7.0
 winrm-2.2.3
 rubyzip-1.2.1
 winrm-fs-1.0.1
 excon-0.58.0
 docker-api-1.33.6
 train-0.26.1
 thor-0.20.0
 rake-12.0.0
 rainbow-2.2.2
 method_source-0.8.2
 rspec-support-3.6.0
 rspec-core-3.6.0
 diff-lcs-1.3
 rspec-expectations-3.6.0
 rspec-mocks-3.6.0
 rspec-3.6.0
 rspec-its-1.2.0
 coderay-1.1.2
 slop-3.6.0
 pry-0.10.4
 hashie-3.5.6
 mixlib-log-1.7.1
 sslshake-1.2.0
 parallel-1.12.0
 multipart-post-2.0.0
 faraday-0.13.1
 blankslate-2.1.2.4
 parslet-1.5.0
 toml-0.1.2
 public_suffix-3.0.0
 addressable-2.5.2
 semverse-2.0.0
 htmlentities-4.3.4
 inspec-1.35.1
 jmespath-1.3.1
 aws-sigv4-1.0.2
 aws-sdk-core-2.9.44
 aws-sdk-resources-2.9.44
 aws-sdk-2.9.44
 aws_config-0.1.0
 awsecrets-1.12.1
 i18n-0.8.6
 thread_safe-0.3.6
 tzinfo-1.2.3
 minitest-5.10.3
 activesupport-4.2.9
 tins-1.15.0
 term-ansicolor-1.6.0
 awspec-0.81.1

packer (1.0.4)
terraform (0.10.3)
kubectl (v1.7.0)
kops (1.7.0)

### 10-06-2017 update terraform version

terraform (0.10.7)