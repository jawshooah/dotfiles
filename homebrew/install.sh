#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if ! which brew &>/dev/null
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check for Brewdler
if ! brew tap --list | grep -qi homebrew/bundle
then
  echo "  Installing Homebrew-bundle for you."
  brew tap Homebrew/bundle
fi

# Install homebrew packages
cd "$(dirname "$0")"
brew update
if ! brew bundle check
then
  echo "  Installing Homebrew dependencies"
  brew bundle
fi

