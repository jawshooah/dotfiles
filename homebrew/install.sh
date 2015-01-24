#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! "$(which brew)"
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check for Brewdler
if test ! "$(which brewdle)"
then
  echo "  Installing Brewdler for you."
  gem install brewdler
fi

# Install homebrew packages
cd "$(dirname "$0")"
brewdle install --trace

exit 0
