require 'rubygems'
gem 'minitest'

require 'minitest/spec'
require 'minitest/autorun'

require 'coveralls'
Coveralls.wear!

require File.expand_path('../../lib/math_probability.rb', __FILE__)