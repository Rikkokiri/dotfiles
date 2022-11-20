export PATH="$HOME/bin:$PATH"

source .exports
source .aliases
source .functions

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable tab completion for `g` by marking it as an alias for `git`
if type _git &> /dev/null; then
	complete -o default -o nospace -F _git g;
fi;

# This should be the last line of the file
# For local changes
# Don't make edits below this
[ -f ".zshlocal" ] && source ".zshlocal"