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
 

packer (1.0.4)
terraform (0.10.3)
kubectl (v1.7.0)
kops (1.7.0)

### 10-06-2017 patch and update various versions

version changes
libcurl (7.56.0-r0)
curl (7.56.0-r0)
sqlite-libs (3.20.0-r0)
python3 (3.6.1-r3)
ruby-libs (2.4.2-r0)
ruby (2.4.2-r0)
ruby-io-console (2.4.2-r0)

invoke (0.21.0)
awscli (1.11.166)
inspec-1.40.0
awspec-0.87.0
terraform (0.10.7)

# 12-17-2017 Alpine 3.7 update

(1/14) Installing ca-certificates (20171114-r0)
(2/14) Installing libssh2 (1.8.0-r2)
(3/14) Installing libcurl (7.57.0-r0)
(4/14) Installing expat (2.2.5-r0)
(5/14) Installing pcre2 (10.30-r0)
(6/14) Installing git (2.15.0-r1)
(7/14) Installing gzip (1.8-r0)
(8/14) Installing openssh-keygen (7.5_p1-r8)
(9/14) Installing openssh-client (7.5_p1-r8)
(10/14) Installing openssh-sftp-server (7.5_p1-r8)
(11/14) Installing openssh-server-common (7.5_p1-r8)
(12/14) Installing openssh-server (7.5_p1-r8)
(13/14) Installing openssh (7.5_p1-r8)
(14/14) Installing tar (1.29-r1)

(1/54) Installing pkgconf (1.3.10-r0)
(2/54) Installing ncurses-terminfo-base (6.0_p20170930-r0)
(3/54) Installing ncurses-terminfo (6.0_p20170930-r0)
(4/54) Installing ncurses-libs (6.0_p20170930-r0)
(5/54) Installing readline (7.0.003-r0)
(6/54) Installing bash (4.4.12-r2)
(7/54) Installing bash-completion (2.7-r3)
(8/54) Installing bash-doc (4.4.12-r2)
(9/54) Installing curl (7.57.0-r0)
(10/54) Installing libmnl (1.0.4-r0)
(11/54) Installing jansson (2.10-r0)
(12/54) Installing libnftnl-libs (1.0.8-r1)
(13/54) Installing iptables (1.6.1-r1)
(14/54) Installing device-mapper-libs (2.02.175-r0)
(15/54) Installing libltdl (2.4.6-r4)
(16/54) Installing libseccomp (2.3.2-r0)
(17/54) Installing docker (17.10.0-r0)
(18/54) Installing docker-bash-completion (17.10.0-r0)
(19/54) Installing libgcc (6.4.0-r5)
(20/54) Installing libstdc++ (6.4.0-r5)
(21/54) Installing binutils-libs (2.28-r3)
(22/54) Installing binutils (2.28-r3)
(23/54) Installing gmp (6.1.2-r1)
(24/54) Installing isl (0.18-r0)
(25/54) Installing libgomp (6.4.0-r5)
(26/54) Installing libatomic (6.4.0-r5)
(27/54) Installing mpfr3 (3.1.5-r1)
(28/54) Installing mpc1 (1.0.3-r1)
(29/54) Installing gcc (6.4.0-r5)
(30/54) Installing musl-dev (1.1.18-r2)
(31/54) Installing libc-dev (0.7.1-r0)
(32/54) Installing g++ (6.4.0-r5)
(33/54) Installing git-bash-completion (2.15.0-r1)
(34/54) Installing libffi (3.2.1-r4)
(35/54) Installing libffi-dev (3.2.1-r4)
(36/54) Installing make (4.2.1-r0)
(37/54) Installing openrc (0.24.1-r4)
(38/54) Installing libcrypto1.0 (1.0.2n-r0)
(39/54) Installing libssl1.0 (1.0.2n-r0)
(40/54) Installing openssl (1.0.2n-r0)
(41/54) Installing libbz2 (1.0.6-r6)
(42/54) Installing gdbm (1.13-r1)
(43/54) Installing xz-libs (5.2.3-r1)
(44/54) Installing sqlite-libs (3.21.0-r0)
(45/54) Installing python3 (3.6.3-r9)
(46/54) Installing yaml (0.1.7-r0)
(47/54) Installing ruby-libs (2.4.3-r0)
(48/54) Installing ruby (2.4.3-r0)
(49/54) Installing ruby-io-console (2.4.3-r0)
(50/54) Installing ruby-bundler (1.16.0-r0)
(51/54) Installing libgmpxx (6.1.2-r1)
(52/54) Installing gmp-dev (6.1.2-r1)
(53/54) Installing ruby-dev (2.4.3-r0)
(54/54) Installing wget (1.19.2-r1)

Downloading setuptools-38.2.4-py2.py3-none-any.whl (489kB)
Downloading invoke-0.21.0-py3-none-any.whl (153kB)

Successfully installed json-2.1.0
Successfully installed mixlib-shellout-2.3.2
Successfully installed net-ssh-4.2.0
Successfully installed net-scp-1.2.1
Successfully installed ffi-1.9.18
Successfully installed gssapi-1.2.0
Successfully installed httpclient-2.8.3
Successfully installed rubyntlm-0.6.2
Successfully installed little-plugger-1.1.4
Successfully installed multi_json-1.12.2
Successfully installed logging-2.2.2
Successfully installed nori-2.6.0
Successfully installed builder-3.2.3
Successfully installed gyoku-1.3.1
Successfully installed erubis-2.7.0
Successfully installed winrm-2.2.3
Successfully installed rubyzip-1.2.1
Successfully installed winrm-fs-1.1.1
Successfully installed excon-0.60.0
Successfully installed docker-api-1.34.0
Successfully installed train-0.31.1
Successfully installed thor-0.20.0
Successfully installed method_source-0.9.0
Successfully installed rspec-support-3.7.0
Successfully installed rspec-core-3.7.0
Successfully installed diff-lcs-1.3
Successfully installed rspec-expectations-3.7.0
Successfully installed rspec-mocks-3.7.0
Successfully installed rspec-3.7.0
Successfully installed rspec-its-1.2.0
Successfully installed coderay-1.1.2
Successfully installed pry-0.11.3
Successfully installed hashie-3.5.6
Successfully installed mixlib-log-1.7.1
Successfully installed sslshake-1.2.0
Successfully installed parallel-1.12.1
Successfully installed multipart-post-2.0.0
Successfully installed faraday-0.13.1
Successfully installed tomlrb-1.2.6
Successfully installed public_suffix-3.0.1
Successfully installed addressable-2.5.2
Successfully installed parslet-1.8.1
Successfully installed semverse-2.0.0
Successfully installed htmlentities-4.3.4
Successfully installed inspec-1.48.0


awscli (1.14)
inspec-1.48.0
awspec-1.0.0
terraform (0.11.1)
consul (1.0.1)