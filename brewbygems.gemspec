# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rubygems_plugin"

Gem::Specification.new do |s|
  s.name = %q{brewbygems}
  s.version = "0.4.0"

  s.authors = ["André Arko"]
  s.date = %q{2010-11-05}
  s.summary = %q{Makes sure RubyGems plays nice with Homebrew}
  s.description = %q{Adds RubyGems post-install and post-uninstall hooks to update Homebrew bin/ symlinks}
  s.email = %q{andre@arko.net}
  s.homepage = %q{http://github.com/indirect/brewbygems}

  s.rubyforge_project = "brewbygems"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~>1.0"
end

