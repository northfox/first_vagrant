require "spec_helper"

describe package("lsof") do
  it { should be_installed }
end

describe command("lsof -i:80") do
  its(:exit_status) { should eq 0 }
end
