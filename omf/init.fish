
source $HOME/.local/bin/env.fish

# PATH
set -xg PATH $HOME/.local/bin/ /opt/homebrew/bin /opt/homebrew/sbin $HOME/bin /usr/local/bin /usr/bin /bin $PATH

# Python
set -xg PYTHONDONTWRITEBYTECODE 1