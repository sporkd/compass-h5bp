# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "compass/html5bp/version"

Gem::Specification.new do |s|
  s.name                  = "compass-html5bp"
  s.version               = Compass::Html5bp::VERSION
  s.platform              = Gem::Platform::RUBY
  s.required_ruby_version = '~> 2.0'
  s.authors               = ["Ron Scott-Adams", "Peter Gumeson"]
  s.email                 = 'ron@tohuw.net'
  s.homepage              = "http://rubygems.org/gems/compass-html5bp"
  s.summary               = %q{ Compass extension for HTML5 Boilerplate v5.0 }
  s.description           = %q{ Compass extension of HTML5 mixins extracted from the HTML5 Boilerplate project (h5bp.com) }
  s.license               = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'compass', '~> 1.0', '>= 1.0.3'
end