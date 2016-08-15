#!/bin/sh

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  git clone git://github.com/rbenv/rbenv.git ~/.rbenv
  eval "$(~/.rbenv/bin/rbenv init -)"
fi

if test ! -d ~/.rbenv/plugins/ruby-build
then
  echo "  Installing ruby-build for you."
  git clone git://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
fi

if test ! -d ~/.rbenv/plugins/rbenv-update
then
  echo "  Installing rbenv-update for you."
  git clone git://github.com/rbenv/rbenv-update.git ~/.rbenv/plugins/rbenv-update
fi
