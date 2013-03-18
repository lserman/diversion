# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diversion/version'

Gem::Specification.new do |gem|
  gem.name          = "diversion"
  gem.version       = Diversion::VERSION
  gem.authors       = ["Logan Serman"]
  gem.email         = ["loganserman@gmail.com"]
  gem.description   = "Provides a DSL to route different REST API versions."
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails"
end
