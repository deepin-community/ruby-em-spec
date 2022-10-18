require 'rake/testtask'
#require 'rubygems'
#require 'bundler'
#Bundler::GemHelper.install_tasks

# Don't run spec -> someone needs to port them to rspec 2.13
# They run fine with rspec 2.10
# https://github.com/joshbuddy/em-spec/issues/16

#require 'rspec/core/rake_task'

#RSpec::Core::RakeTask.new(:spec) do |spec|
#  spec.pattern      = './spec/**/*_spec.rb'
#end

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.test_files = FileList['test/test_spec.rb']
  t.verbose = true
end

#task :default => [:test, :spec]
task :default => [:test]
