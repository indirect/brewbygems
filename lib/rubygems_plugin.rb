Gem::post_install do |installer|
  cellar = File.join(`brew --prefix`.chomp, "Cellar")
  # Augh RubyGems why is installer.gem_home a Pathname here
  installing_to_cellar = installer.gem_home.to_s.include?(cellar)
  has_binary = installer.spec.executables.any?

  unless system("brew link gems")
    puts "brewbygems: Sorry, you don't seem to have Homebrew installed."
  end if has_binary && installing_to_cellar
end

Gem::post_uninstall do |installer|
  cellar = File.join(`brew --prefix`.chomp, "Cellar")
  # Augh RubyGems why is installer.gem_home a String here
  installing_to_cellar = installer.gem_home.to_s.include?(cellar)
  has_binary = installer.spec.executables.any?

  unless system("brew prune")
    puts "brewbygems: Sorry, you don't seem to have Homebrew installed."
  end if has_binary && installing_to_cellar
end