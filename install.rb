#!/usr/bin/env ruby

home_dir = Dir.pwd.sub(ENV['HOME'] + '/', '')

dotfiles = [
  'profile',
  'tm_properties',
  'gitignore',
  'gitconfig',
  'hgrc',
  'ghci',
  'gemrc'
]

dotfiles_dir = Dir.pwd.sub(home_dir + '/', '')

dotfiles.each do |file|
  target = File.join(home_dir, file)
  
  unless File.exist? target
    system %[ln -vsf #{File.join(dotfiles_dir, '.' + file)} #{target}]
  end
end
