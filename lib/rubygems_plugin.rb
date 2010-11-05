this_version = "0.4.0"
loaded_version = defined?(Brewbygems) && Gem::Version.new(Brewbygems.loaded_version)

unless loaded_version && loaded_version > Gem::Version.new(this_version)
  require File.expand_path('../brewbygems', __FILE__)
  Brewbygems.loaded_version = this_version
end
