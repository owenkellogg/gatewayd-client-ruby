# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gateway_client/version'

Gem::Specification.new do |spec|
  spec.name          = "gateway_client"
  spec.version       = GatewayClient::VERSION
  spec.authors       = ["Steven Zeiler"]
  spec.email         = ["me@stevenzeiler.com"]
  spec.summary       = %q{An http client for gatewayd}
  spec.description   = %q{Interface with a Ripple Gateway API server}
  spec.homepage      = ""
  spec.license       = "UNLICENSE"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
