module Brewbygems
  class << self
    attr_accessor :loaded_version

    def link
      puts "brewbygems: running command `brew link gems`" if Gem.configuration.verbose == 1
      system("brew link gems #{silence}")
    end

    def prune
      puts "brewbygems: running command `brew prune`" if Gem.configuration.verbose == 1
      system("brew prune #{silence}")
    end

  private

    def silence
      Gem.configuration.verbose == 1 ? "" : "> /dev/null"
    end

  end
end

Gem::post_install do |installer|
  cellar = File.join(`brew --prefix`.chomp, "Cellar")
  # Augh RubyGems why is installer.gem_home a String here
  installing_to_cellar = installer.gem_home.to_s.include?(cellar)
  has_binary = installer.spec.executables.any?

  if has_binary && installing_to_cellar
    success = Brewbygems.link
    puts "brewbygems: Sorry, you don't seem to have Homebrew installed." unless success
  end
end

Gem::post_uninstall do |installer|
  cellar = File.join(`brew --prefix`.chomp, "Cellar")
  # Augh RubyGems why is installer.gem_home a String here
  installing_to_cellar = installer.gem_home.to_s.include?(cellar)
  has_binary = installer.spec.executables.any?

  if has_binary && installing_to_cellar
    success = Brewbygems.prune
    puts "brewbygems: Sorry, you don't seem to have Homebrew installed." unless success
  end
end
