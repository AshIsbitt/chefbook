# InSpec test for recipe chefbook::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe package 'python3-pip' do
  it {should be_installed}
end

describe directory '/home/vagrant/Downloads' do
  it {should exist}
end
