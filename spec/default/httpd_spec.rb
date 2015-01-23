require "spec_helper"

describe package("httpd") do
  it { should_not be_installed }
end
