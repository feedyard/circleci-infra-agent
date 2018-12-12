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
    its('stdout') { should include ('1.16') }
  end
end

control 'gcloud version' do
  impact 1.0
  title 'confirm gcloud version installed'
  desc 'confirm version reported by gcloud matches the desired version'
  describe command('gcloud version') do
    its('stdout') { should include ('Google Cloud SDK 228') }
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
    its('stdout') { should include ('1.3') }
  end
end
