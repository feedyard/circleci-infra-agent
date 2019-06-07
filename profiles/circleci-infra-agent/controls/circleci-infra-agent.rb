control 'python packages' do
  impact 1.0
  title 'confirm python package installation'
  desc 'confirm all desired python packages are installed'
  describe command('pip list') do
    its('stdout') { should include ('boto3') }
    its('stdout') { should include ('awscli') }
    its('stdout') { should include ('Jinja2') }
  end
end

control 'json' do
  impact 1.0
  title 'confirm json gem installed'
  desc 'confirm version of json installed'
  describe gem('json') do
    it { should be_installed }
    its('version') { should eq '2.2.0' }
  end
end

control 'awspec' do
  impact 1.0
  title 'confirm awspec gem installed'
  desc 'confirm version of awspec installed'
  describe gem('awspec') do
    it { should be_installed }
    its('version') { should eq '1.17.4' }
  end
end

control 'test-kitchen' do
  impact 1.0
  title 'confirm test-kitchen gem installed'
  desc 'confirm version of test-kitchen installed'
  describe gem('test-kitchen') do
    it { should be_installed }
    its('version') { should eq '2.2.5' }
  end
end

control 'kitchen-ec2' do
  impact 1.0
  title 'confirm kitchen-ec2 gem installed'
  desc 'confirm version of kitchen-ec2 installed'
  describe gem('kitchen-ec2') do
    it { should be_installed }
    its('version') { should eq '3.0.1' }
  end
end

control 'kitchen-google' do
  impact 1.0
  title 'confirm kitchen-google gem installed'
  desc 'confirm version of kitchen-google installed'
  describe gem('kitchen-google') do
    it { should be_installed }
    its('version') { should eq '2.0.1' }
  end
end

control 'aws-cli version' do
  impact 1.0
  title 'confirm aws-cli version installed'
  desc 'confirm version reported by aws-cli matches the desired version'
  describe command('aws --version') do
    its('stdout') { should include ('1.16') }
  end
end

control 'gcloud version' do
  impact 1.0
  title 'confirm gcloud version installed'
  desc 'confirm version reported by gcloud matches the desired version'
  describe command('gcloud version') do
    its('stdout') { should include ('Google Cloud SDK 246') }
  end
end

control 'terraform version' do
  impact 1.0
  title 'confirm terraform version installed'
  desc 'confirm version reported by terraform matches the desired version'
  describe command('terraform -v') do
    its('stdout') { should include ('0.11.14') }
  end
end

control 'packer version' do
  impact 1.0
  title 'confirm packer version installed'
  desc 'confirm version reported by packer matches the desired version'
  describe command('packer -v') do
    its('stdout') { should include ('1.4') }
  end
end

control 'chamber version' do
  impact 1.0
  title 'confirm chamber version installed'
  desc 'confirm version reported by chamber matches the desired version'
  describe command('chamber version') do
    its('stdout') { should include ('2.3') }
  end
end
