# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'double_or_nothing/version'

Gem::Specification.new do |spec|
  spec.name          = "double_or_nothing"
  spec.version       = DoubleOrNothing::VERSION
  spec.authors       = ["Philip Arndt"]
  spec.email         = ["p@arndt.io"]
  spec.summary       = %q{Calculate when someone is twice your age.}
  spec.description   = %q{Figure out the exact date that somebody is twice your age.}
  spec.homepage      = "http://p.arndt.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-core", "~> 3.1"
end
