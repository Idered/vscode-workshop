# Load Yarn
export PATH="$HOME/.yarn/bin:$PATH"

# Turn command line colors on
export CLICOLOR=1

# Set ls command colors
export LSCOLORS=GxFxCxDxBxegedabagaced

# Set VSCode as editor
export EDITOR='code -w'

# Stop Git from asking for merge messages
export GIT_MERGE_AUTOEDIT=no

# Load NVS
export NVS_HOME="$HOME/.nvs"
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"
