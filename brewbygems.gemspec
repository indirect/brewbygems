# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "brewbygems/version"

Gem::Specification.new do |s|
  s.name = %q{brewbygems}
  s.version  = Brewbygems::VERSION
  s.platform = Gem::Platform::RUBY

  s.authors     = ["André Arko"]
  s.date        = %q{2010-11-05}
  s.summary     = %q{Makes sure RubyGems plays nice with Homebrew}
  s.description = %q{Adds RubyGems post-install and post-uninstall hooks to update Homebrew bin/ symlinks}
  s.email       = %q{andre@arko.net}
  s.homepage    = %q{http://github.com/indirect/brewbygems}

  s.rubyforge_project = "brewbygems"

  s.files = [
    "brewbygems.gemspec",
    "lib/brewbygems.rb",
    "lib/brewbygems/version.rb",
    "lib/rubygems_plugin.rb",
    "Rakefile",
    "README.md"
  ]
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~>1.0"
end

