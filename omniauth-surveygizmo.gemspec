# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/surveygizmo/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-surveygizmo"
  spec.version       = Omniauth::Surveygizmo::VERSION
  spec.authors       = ["vaberay"]
  spec.email         = ["ramon@wishpond.com"]

  spec.summary       = %q{OmniAuth strategy for SurveyGizmo}
  spec.description   = %q{Using OAuth 1.0 }
  spec.homepage      = "https://Wishpond.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "omniauth", '~>1.0'
  spec.add_runtime_dependency "omniauth-oauth"
end
