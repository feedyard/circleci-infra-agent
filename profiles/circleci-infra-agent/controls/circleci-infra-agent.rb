control 'packages' do
  impact 1.0
  title 'confirm package installation'
  desc 'confirm all desired packages are installed'
  describe command('apk info') do
    its('stdout') { should include ('git') }
    its('stdout') { should include ('openssh') }
    its('stdout') { should include ('tar') }
    its('stdout') { should include ('gzip') }
    its('stdout') { should include ('ca-certificates') }
    its('stdout') { should include ('bash') }
    its('stdout') { should include ('bash-doc') }
    its('stdout') { should include ('bash-completion') }
    its('stdout') { should include ('curl') }
    its('stdout') { should include ('wget') }
    its('stdout') { should include ('openssl') }
    its('stdout') { should include ('openrc') }
    its('stdout') { should include ('python3') }
    its('stdout') { should include ('ruby') }
    its('stdout') { should include ('ruby-bundler') }
    its('stdout') { should include ('ruby-dev') }
    its('stdout') { should include ('g++') }
    its('stdout') { should include ('libffi-dev') }
    its('stdout') { should include ('musl-dev') }
    its('stdout') { should include ('make') }
    its('stdout') { should include ('docker') }
  end
end

control 'python packages' do
  impact 1.0
  title 'confirm python package installation'
  desc 'confirm all desired python packages are installed'
  describe command('pip list') do
    its('stdout') { should include ('invoke') }
    its('stdout') { should include ('boto3') }
    its('stdout') { should include ('awscli') }
  end
end

control 'docker-compose version' do
  impact 1.0
  title 'confirm docker-compose version installed'
  desc 'confirm version reported by docker-compose matches the desired version'
  describe command('docker-compose -v') do
    its('stdout') { should include ('1.18') }
  end
end

control 'aws-cli version' do
  impact 1.0
  title 'confirm aws-cli version installed'
  desc 'confirm version reported by aws-cli matches the desired version'
  describe command('aws --version') do
    its('stdout') { should include ('1.14') }
  end
end

control 'awspec version' do
  impact 1.0
  title 'confirm awspec version installed'
  desc 'confirm version reported by awspec matches the desired version'
  describe command('awspec -v') do
    its('stdout') { should include ('1.0') }
  end
end

control 'terraform version' do
  impact 1.0
  title 'confirm terraform version installed'
  desc 'confirm version reported by terraform matches the desired version'
  describe command('terraform -v') do
    its('stdout') { should include ('0.11') }
  end
end

control 'packer version' do
  impact 1.0
  title 'confirm packer version installed'
  desc 'confirm version reported by packer matches the desired version'
  describe command('packer -v') do
    its('stdout') { should include ('1.1') }
  end
end

control 'kubectl version' do
  impact 1.0
  title 'confirm kubectl version installed'
  desc 'confirm version reported by kubectl matches the desired version'
  describe command('kubectl version') do
    its('stdout') { should include ('v1.8.4') }
  end
end

control 'kops version' do
  impact 1.0
  title 'confirm kops version installed'
  desc 'confirm version reported by kops matches the desired version'
  describe command('kops version') do
    its('stdout') { should include ('1.8.0') }
  end
end
