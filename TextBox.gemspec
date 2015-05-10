# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "TextBox"
  spec.version       = "1.0.3"
  spec.authors       = ["Ben"]
  spec.email         = ["ben@bensites.com"]
  spec.summary       = %q{Quickly run an API to set and change a text file}
  spec.homepage      = "http://bensites.com"
  spec.license       = "MIT"

  spec.executables   = ["textboxserver"]
  spec.default_executable = 'textboxserver'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.files         = ['lib/TextBoxServer.rb']

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "sinatra"
end
