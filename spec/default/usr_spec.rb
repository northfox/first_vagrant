require "spec_helper"

describe user("vagrant") do
  it { should exist }
  it { should belong_to_group "vagrant" }
  it { should have_home_directory "/home/vagrant" }
  it { should have_login_shell "/bin/bash" }
end

describe user("naoya") do
  it { should exist }
  it { should belong_to_group "naoya" }
  it { should have_home_directory "/home/naoya" }
  it { should have_login_shell "/bin/bash" }
end
