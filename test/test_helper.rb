require 'simplecov'
require 'coveralls'
SimpleCov.start do
  # rules here
end if ENV["COVERAGE"]

require 'rubygems'
gem 'minitest'

require 'minitest/spec'
require 'minitest/autorun'

require File.expand_path('../../lib/math_probability.rb', __FILE__)