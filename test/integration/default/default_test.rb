# InSpec test for recipe nginx::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end
describe package('nginx') do
  it { should be_installed}
end

describe service('nginx') do
  it { should be_running }
  it { should be_enabled }
end
describe port(80) do
  it { should be_listening }
end
