begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "brewbygems"
    gemspec.version = "0.1"
    gemspec.summary = "Makes sure RubyGems plays nice with Homebrew"
    gemspec.description = "Adds RubyGems post-install and post-uninstall hooks to update Homebrew bin/ symlinks"

    gemspec.authors = ["Andre Arko"]
    gemspec.email  = "andre@arko.net"
    gemspec.homepage = "http://github.com/indirect/brewbygems"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end