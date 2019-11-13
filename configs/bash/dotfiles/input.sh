# Make Tab autocomplete regardless of filename case
bind 'set completion-ignore-case on'

# List all matches in case multiple possible completions are possible
bind 'set show-all-if-ambiguous on'

# Immediately add a trailing slash when autocompleting symlinks to directories
bind 'set mark-symlinked-directories on'

# Use the text that has already been typed as the prefix for searching through
# commands (i.e. more intelligent Up/Down behavior)
bind '"\e[B": history-search-forward'
bind '"\e[A": history-search-backward'

# Do not autocomplete hidden files unless the pattern explicitly begins with a dot
bind 'set match-hidden-files off'

# Show all autocomplete results at once
bind 'set page-completions off'

# If there are more than 200 possible completions for a word, ask to show them all
bind 'set completion-query-items 200'

# Show extra file information when completing, like `ls -F` does
# set visible-stats on

# Be more intelligent when autocompleting by also looking at the text after
# the cursor. For example, when the current line is "cd ~/src/mozil", and
# the cursor is on the "z", pressing Tab will not autocomplete it to "cd
# ~/src/mozillail", but to "cd ~/src/mozilla". (This is supported by the
# Readline used by Bash 4.)
bind 'set skip-completed-text on'

# Allow UTF-8 input and output, instead of showing stuff like $'\0123\0456'
bind 'set input-meta on'
bind 'set output-meta on'
bind 'set convert-meta off'

# Use Alt/Meta + Delete to delete the preceding word
bind '"\e[3;3~": kill-word'

bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward
bind Space:magic-space

bind 'TAB:menu-complete'

# [Ctrl-RightArrow] - move forward one word
bind '";5C": forward-word'
# [Ctrl-LeftArrow] - move backward one word
bind '";5D": backward-word'

# alt+r -- search history based on a mask (augments Arrow up):
cmd_mhist="\"\C-k\C-uhistory | grep \\\"^ *[0-9]* *\C-y\\\" \C-m\""
bind '"\M-r"':"$cmd_mhist"
bind '"\C-x\C-r"':"$cmd_mhist"

unset cmd_hist cmd_mhist

# Don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

# Don't put 'history' commands themselves in the history
export HISTIGNORE='history*'

# Kepp no more than 1000 lines
export HISTFILESIZE=1000
export HISTSIZE=1000
