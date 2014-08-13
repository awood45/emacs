task :default => :install

HOME="#{Dir.home}"

def copy_dot_emacs_file
  cp '.emacs',  "#{HOME}/.emacs"
end

# Overwrites the emacs-tools file tree.
task :update do
  rm_rf "#{HOME}/emacs-tools/"
  cp_r "emacs-tools", "#{HOME}"
end

# Installs the .emacs file if it doesn't exist currently, and copies file tree.
task :install => [:update] do
  copy_dot_emacs_file unless File.exists?("#{HOME}/.emacs")
end

# Overwrites the .emacs file, and copies the file tree.
task :clobber => [:update] do
  copy_dot_emacs_file
end

task :help do
  puts "`rake` or `rake install`: Overwrite emacs-tools directory, create "\
    "~/.emacs if it does not exist."
  puts "`rake update`: Overwrite emacs-tools directory."
  puts "`rake clobber`: Overwrite emacs-tools directory and ~/.emacs file."
end
