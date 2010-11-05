loaded_already  = defined?(Brewbygems::VERSION)
loaded_is_older = loaded_already && Gem::Version.new(Brewbygems::VERSION) < Gem::Version.new("0.3.0")

if !loaded_already || loaded_is_older
  module Brewbygems
    VERSION = "0.3.0"

    class << self

      def prune
        puts "brewbygems: running command `brew prune #{silence}`" if $VERBOSE
        system("brew prune #{silence}")
      end

      def link
        puts "brewbygems: running command `brew link gems #{silence}`" if $VERBOSE
        system("brew link gems #{silence}")
      end

    private

      def silence
        $VERBOSE ? "" : "> /dev/null"
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
end