begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "brewbygems"
    gem.summary = "Makes sure RubyGems plays nice with Homebrew"
    gem.description = "Adds RubyGems post-install and post-uninstall hooks to update Homebrew bin/ symlinks"

    gem.authors = ["Andre Arko"]
    gem.email  = "andre@arko.net"
    gem.homepage = "http://github.com/indirect/brewbygems"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end