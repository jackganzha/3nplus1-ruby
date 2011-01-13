require 'rubygems'
require 'rspec/core/rake_task'

desc 'Default: run specs.'
task :default => :spec

desc "Run all specs in spec directory (excluding plugin specs)"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = ['--options', "\"#{File.dirname(__FILE__)}/spec/spec.opts\""]
end

namespace :spec do
  desc "Print Specdoc for all specs (excluding plugin specs)"
  RSpec::Core::RakeTask.new(:doc) do |t|
    t.rspec_opts = ['--options', "\"#{File.dirname(__FILE__)}/spec/spec.opts\""]
  end
end

