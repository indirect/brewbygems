brewbygems
==========

Brewbygems is a RubyGems plugin that adds post-install and post-uninstall
hooks to RubyGems that update the symlinks in your Homebrew /bin/. Yay.

Todo
----

Use the Gem::Installer instance to only run link or prune when the gem has files in bin/

Requirements
------------

 * RubyGems
 * Homebrew

Install
-------

`gem install brewbygems`

License
-------

The MIT License, © 2009 Andre Arko.