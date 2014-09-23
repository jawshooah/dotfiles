# Set Homebrew path
PATH="/usr/local/bin:$PATH"

# Use GNU tools
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Use GNU sed
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"

# Set Sentrana workspace
export SENTRANA_WORKSPACE="$HOME/dev/sentrana"

# Use github/hub as wrapper for git
alias git=hub

if [ -s "/Users/joshuahagins/.scm_breeze/scm_breeze.sh" ]; then
	source "/Users/joshuahagins/.scm_breeze/scm_breeze.sh"
fi
