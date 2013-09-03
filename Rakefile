#!/usr/bin/env rake
require "bundler/gem_tasks"
 
require 'rake/testtask'
 
Rake::TestTask.new do |t|
  t.libs << 'lib/math_probability'
  t.test_files = FileList['test/lib/math_probability/*_test.rb']
end
 
task :default => :test