#!/bin/sh

if test ! $(which pyenv)
then
  echo "  Installing pyenv for you."
  git clone git://github.com/yyuu/pyenv.git ~/.pyenv
  eval "$(~/.pyenv/bin/pyenv init -)"
fi

if test ! -d ~/.pyenv/plugins/pyenv-update
then
  echo "  Installing pyenv-update for you."
  git clone git://github.com/yyuu/pyenv-update.git ~/.pyenv/plugins/pyenv-update
fi
