# emacs

## Purpose
This repo contains my configuration setup for Emacs. I am keeping it in this
repo for a few reasons:

1. In order to keep my Emacs configuration settings consistent across machines
  I use. If I make an improvement anywhere, it takes effect everywhere.
2. So that anyone who knows Emacs customization better than I do (a great many
  people) can suggest improvements.
3. In the hope that my own humble setup might prove helpful to someone else
  trying to improve their own productivity in turn.

## Organization
- `.emacs`: I don't put any configuration logic into the .emacs file itself.
  Instead, my .emacs file points to the rest of my configuration, and below the
  "fold" I can add machine-specific customizations that are not smashed by my
  setup script.
- `emacs-tools`: This directory contains all of my Emacs customizations. At this
  point, I've chosen to use my own folder rather than `.emacs.d`, which is a
  personal preference such that I can more easily run my setup scripts (such as
  deleting either folder in full without fear of impacting the other). This may
  change in the future.
- `Rakefile`: This is an executable file that runs the different Emacs setup
  scripts that I have. They may get more advanced over time, but would include
  the ability to patch `emacs-tools` with any updates, do an initial setup that
  adds my load statement into `.emacs` if it doesn't yet exist, or clobber all
  Emacs configuration files and build them from scratch. In any case, running
  `rake help` will print out your choices.

In general, I'm aiming to keep responsibilities separate. For example, each
development environment will have its own config file or file structure (for
e.g., Ruby modes and customizations), increasing granularity as files increase
in size. Each file should be sufficiently commented for a reader roughly
familiar with Emacs Lisp to follow along.
