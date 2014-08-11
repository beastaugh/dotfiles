#!/usr/bin/env ruby

dotfiles = [
  # Bash profile
  'profile',
  
  # TextMate properties file
  'tm_properties',
  
  # Git config files
  'gitignore',
  'gitconfig',
  
  # GHCI config file
  'ghci',
  
  # RubyGems config file
  'gemrc'
]

dotfiles.each do |file|
  target = File.join(Dir.home, '.' + file)
  source = File.join(Dir.getwd, file)
  
  if File.exist? target
    puts "The file #{target} already exists"
  else
    cmd = %[ln -vsf #{source} #{target}]
    puts "Linked #{source} to #{target}"
    system cmd
  end
end
