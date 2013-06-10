# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'mailluloid'
  s.version     = '0.0.3'
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.date        = '2013-06-09'
  s.summary     = "A celluloid'd mailer wrapper for action mailer"
  s.description = "Async mailer without any painful setup"
  s.authors     = ["HuyT"]
  s.email       = 'thailehuy@gmail.com'
  s.files       = ["lib/mailluloid.rb"]
  s.required_ruby_version     = '>= 1.9.2'
  s.required_rubygems_version = '>= 1.3.6'
  s.homepage    =
    'https://github.com/thailehuy/mailluloid'

  s.add_dependency 'actionmailer'
  s.add_dependency 'celluloid'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

end