# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'review_me/version'

Gem::Specification.new do |spec|
  spec.name          = "review_me"
  spec.version       = ReviewMe::VERSION
  spec.authors       = ["Peak Xu"]
  spec.email         = ["peak.xu@gmail.com"]
  spec.summary       = %q{Discover best reviewer for code}
  spec.description   = %q{Does so by finding most active contributor in relevant area of repo}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rugged'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
