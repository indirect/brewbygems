= brewbygems

* http://github.com/indirect/brewbygems

== WHAT

Brewbygems is a RubyGems plugin that adds post-install and post-uninstall
hooks to RubyGems that update the symlinks in your Homebrew /bin/. Yay.

== TODO

Use the Gem::Installer instance to only run link or prune when the gem has files in bin/

== REQUIREMENTS

* RubyGems
* Homebrew

== INSTALL

* gem install brewbygems

== LICENSE

The MIT License, © 2009 Andre Arko.