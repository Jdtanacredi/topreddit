# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'topreddit/version'

Gem::Specification.new do |spec|
  spec.name          = "topreddit"
  spec.version       = Topreddit::VERSION
  spec.authors       = ["Justin Tanacredi"]
  spec.email         = ["Jtanacredi@gmail.com"]
  spec.description   = %q{Pulls top reddit and displays in command line}
  spec.summary       = %q{Pulls top reddit and displays in command line}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rest-client'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency "rake"
end
