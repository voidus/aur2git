# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aur2git/version'

Gem::Specification.new do |spec|
  spec.name          = "aur2git"
  spec.version       = Aur2git::VERSION
  spec.authors       = ["Simon Kohlmeyer"]
  spec.email         = ["simon.kohlmeyer@gmail.com"]
  spec.summary       = %q{Gets your aur packages and uploads them to aur-dev via git}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = ""

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency('rake')

  spec.add_dependency('methadone', '~> 1.8.0')
end
