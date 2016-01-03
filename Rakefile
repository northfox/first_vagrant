require 'bundler'
Bundler.require

require 'rake'
require 'rspec/core/rake_task'
require 'ci/reporter/rake/rspec'

namespace :ci do
  task :all => ['ci:setup:rspec', 'rspec']
end

