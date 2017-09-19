# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_job/disable/version'

Gem::Specification.new do |spec|
  spec.name          = 'active_job-disable'
  spec.version       = ActiveJob::Disable::VERSION
  spec.authors       = ['Taiki Sugawara']
  spec.email         = ['buzz.taiki@gmail.com']

  spec.summary       = 'A rails plugin that disables Active job.'
  spec.homepage      = 'https://github.com/smartoperation/active_job-disable'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activejob', '~> 5.1.1'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'actionmailer', '~> 5.1.1'
end
