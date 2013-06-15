# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'my/gem/version'

Gem::Specification.new do |spec|
  spec.name          = "my-gem"
  spec.version       = My::Gem::VERSION
  spec.authors       = ["Tim Moore"]
  spec.email         = ["tmoore@incrementalism.net"]
  spec.description   = %q{A gem description}
  spec.summary       = %q{A gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*.rb']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
