control 'packages' do
  impact 1.0
  title 'confirm package installation'
  desc 'confirm all desired packages are installed'
  describe command('apk info') do
    its('stdout') { should include ('jq') }
    its('stdout') { should include ('groff') }
    its('stdout') { should include ('less') }
    its('stdout') { should include ('util-linux') }
    its('stdout') { should include ('go') }
  end
end

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
    its('stdout') { should include ('1.4') }
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
    its('stdout') { should include ('1.2') }
  end
end

control 'kubectl version' do
  impact 1.0
  title 'confirm kubectl version installed'
  desc 'confirm version reported by kubectl matches the desired version'
  describe command('kubectl version') do
    its('stdout') { should include ('v1.9') }
  end
end

control 'kops version' do
  impact 1.0
  title 'confirm kops version installed'
  desc 'confirm version reported by kops matches the desired version'
  describe command('kops version') do
    its('stdout') { should include ('1.8') }
  end
end

control 'consul version' do
  impact 1.0
  title 'confirm consul version installed'
  desc 'confirm version reported by consul matches the desired version'
  describe command('consul version') do
    its('stdout') { should include ('1.0') }
  end
end