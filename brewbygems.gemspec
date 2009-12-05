spec = Gem::Specification.new do |s|
  s.name = 'brewbygems'
  s.version = '0.1'
  s.summary = 'Makes sure RubyGems plays nice with Homebrew'
  s.description = 'Adds RubyGems post-install and post-uninstall hooks to update Homebrew bin/ symlinks.'

  s.author = 'Andre Arko'
  s.email  = 'andre@arko.net'
  s.homepage = 'http://github.com/indirect/brewbygems'

  s.files = ['lib/rubygems_plugin.rb']
end