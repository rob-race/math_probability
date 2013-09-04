require 'simplecov'
require 'coveralls'
SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start

require 'rubygems'
gem 'minitest'

require 'minitest/spec'
require 'minitest/autorun'

require File.expand_path('../../lib/math_probability.rb', __FILE__)