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

control 'git version' do
  impact 1.0
  title 'confirm git version installed'
  desc 'confirm version reported by git matches the desired version'
  describe command('git version') do
    its('stdout') { should include ('2.15') }
  end
end

control 'openssh version' do
  impact 1.0
  title 'confirm openssh version installed'
  desc 'confirm version reported by openssh matches the desired version'
  describe command('ssh -V') do
    its('stderr') { should include ('7.5p1') }
  end
end

control 'tar version' do
  impact 1.0
  title 'confirm tar version installed'
  desc 'confirm version reported by tar matches the desired version'
  describe command('tar --version') do
    its('stdout') { should include ('1.29') }
  end
end

control 'gzip version' do
  impact 1.0
  title 'confirm gzip version installed'
  desc 'confirm version reported by gzip matches the desired version'
  describe command('gzip --version') do
    its('stdout') { should include ('1.8') }
  end
end

control 'bash version' do
  impact 1.0
  title 'confirm bash version installed'
  desc 'confirm version reported by bash matches the desired version'
  describe command('bash --version') do
    its('stdout') { should include ('4.4') }
  end
end

control 'curl version' do
  impact 1.0
  title 'confirm curl version installed'
  desc 'confirm version reported by curl matches the desired version'
  describe command('curl -V') do
    its('stdout') { should include ('7.57') }
  end
end

control 'wget version' do
  impact 1.0
  title 'confirm wget version installed'
  desc 'confirm version reported by wget matches the desired version'
  describe command('wget --version') do
    its('stdout') { should include ('1.19') }
  end
end

control 'openssl version' do
  impact 1.0
  title 'confirm openssl version installed'
  desc 'confirm version reported by openssl matches the desired version'
  describe command('openssl version') do
    its('stdout') { should include ('1.0.2') }
  end
end

control 'openrc version' do
  impact 1.0
  title 'confirm openrc version installed'
  desc 'confirm version reported by openrc matches the desired version'
  describe command('openrc -V') do
    its('stdout') { should include ('0.24.1') }
  end
end

control 'python3 version' do
  impact 1.0
  title 'confirm python3 version installed'
  desc 'confirm version reported by python3 matches the desired version'
  describe command('python3 -V') do
    its('stdout') { should include ('3.6.3') }
  end
end

control 'ruby version' do
  impact 1.0
  title 'confirm ruby version installed'
  desc 'confirm version reported by ruby matches the desired version'
  describe command('ruby -v') do
    its('stdout') { should include ('2.4.3') }
  end
end

control 'bundler version' do
  impact 1.0
  title 'confirm bundler version installed'
  desc 'confirm version reported by bundler matches the desired version'
  describe command('bundler -v') do
    its('stdout') { should include ('1.16') }
  end
end

control 'g++ version' do
  impact 1.0
  title 'confirm g++ version installed'
  desc 'confirm version reported by g++ matches the desired version'
  describe command('g++ --version') do
    its('stdout') { should include ('6.4') }
  end
end

control 'make version' do
  impact 1.0
  title 'confirm make version installed'
  desc 'confirm version reported by make matches the desired version'
  describe command('make -v') do
    its('stdout') { should include ('4.2.1') }
  end
end

control 'docker version' do
  impact 1.0
  title 'confirm docker version installed'
  desc 'confirm version reported by docker matches the desired version'
  describe command('docker -v') do
    its('stdout') { should include ('17.10.0-ce') }
  end
end

control 'pip version' do
  impact 1.0
  title 'confirm pip version installed'
  desc 'confirm version reported by pip3 matches the desired version'
  describe command('pip -V') do
    its('stdout') { should include ('9.0.1') }
  end
end

control 'docker-compose version' do
  impact 1.0
  title 'confirm docker-compose version installed'
  desc 'confirm version reported by docker-compose matches the desired version'
  describe command('docker-compose -v') do
    its('stdout') { should include ('1.16') }
  end
end

control 'invoke version' do
  impact 1.0
  title 'confirm invoke version installed'
  desc 'confirm version reported by invoke matches the desired version'
  describe command('invoke -V') do
    its('stdout') { should include ('0.21') }
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

control 'inspec version' do
  impact 1.0
  title 'confirm inspec version installed'
  desc 'confirm version reported by inspec matches the desired version'
  describe command('inspec version') do
    its('stdout') { should include ('1.40') }
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
