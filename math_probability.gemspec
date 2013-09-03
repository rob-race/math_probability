# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'math_probability/version'

Gem::Specification.new do |spec|
  spec.name          = "math_probability"
  spec.version       = MathProbability::VERSION
  spec.authors       = ["Rob Race"]
  spec.email         = ["polysaturate04@aol.com"]
  spec.description   = %q{Quick and simple probabilty methods}
  spec.summary       = %q{Quickly find factorals, summnations, permutations, combanations and probability answers}
  spec.homepage      = "https://gitbub.com/polysaturate/math_probability"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 4.7.3"
end
