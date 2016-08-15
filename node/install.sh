#!/bin/sh

if test ! $(which nodenv)
then
  echo "  Installing nodenv for you."
  git clone git://github.com/nodenv/nodenv.git ~/.nodenv
  eval "$(~/.nodenv/bin/nodenv init -)"
fi

if test ! -d ~/.nodenv/plugins/node-build
then
  echo "  Installing node-build for you."
  git clone git://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
fi

if test ! -d ~/.nodenv/plugins/nodenv-update
then
  echo "  Installing nodenv-update for you."
  git clone git://github.com/nodenv/nodenv-update.git ~/.nodenv/plugins/nodenv-update
fi
