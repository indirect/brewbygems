Gem::post_install do |installer|
  unless system("brew link gems")
    puts "brewbygems: Sorry, you don't seem to have Homebrew installed."
  end
end

Gem::post_uninstall do |installer|
  unless system("brew prune")
    puts "brewbygems: Sorry, you don't seem to have Homebrew installed."
  end
end