
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="half-life"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  alias-finder
  #bgnotify
  #brew
  colored-man-pages
  colorize
  command-not-found
  common-aliases
  #copydir
  #copyfile
  cp
  #dircycle
  #dirhistory
  docker
  #docker-compose
  #encode64
  extract
#   fancy-ctrl-z
#   fzf
  #git
  gitfast
  git-escape-magic
  git-extras
  #git-flow-avh
  git-prompt
  #gitignore
  #globalias
  gnu-utils
#   gpg-agent
  history-substring-search
  #jsontools
  #keychain
#   kubectl
  man
  #nmap
  #osx
  #pass
  pip
  ripgrep
  #rsync
  #safe-paste
  #shell-proxy
  shrink-path
  ssh-agent
  sudo
#   systemadmin
  #taskwarrior
#   timer
  tmux
  #urltools
  #virtualenv
  #web-search
  z
  # zsh_reload
  zsh-interactive-cd
  # zsh-navigation-tools
)


source $ZSH/oh-my-zsh.sh

# User configuration
# ZSH_DISABLE_COMPFIX='true'

setopt histignorespace
setopt extendedglob

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-you-should-use/you-should-use.plugin.zsh
#source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern root line)
ZSH_HIGHLIGHT_STYLES[alias]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=yellow,faint

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="verbose git"
export GIT_PS1_SHOWCOLORHINTS=1

ZSH_ALIAS_FINDER_AUTOMATIC='true'

ZSH_THEME_GIT_PROMPT_CACHE='true'
RPROMPT=''

TIMER_FORMAT='\n~%d'

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
  source "$HB_CNF_HANDLER";
fi

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias c='code .'
alias l='exa'
alias j='fx'
alias cat='bat'
alias zshconfig='code ~/.zshrc'
alias ohmyzsh='code ~/.oh-my-zsh'
alias chug='brew update && { brew upgrade; brew upgrade --cask; }; brew autoremove; brew cleanup; brew doctor'
export HOMEBREW_NO_AUTO_UPDATE=1

export PATH="$HOME/bin:/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="~/Library/Python/3.9/bin:$PATH"
export PATH="$(brew --prefix)/opt/findutils/libexec/gnubin:$PATH"

export IDA_PATH=/Applications/IDA\ Freeware\ 7.6/idabin
export PATH="$HOME/Desktop/workspace/debloating/retdec/bin:$PATH"

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Desktop/workspace
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/opt/python@3.7/bin:$PATH"

export PATH="/usr/local/opt/ruby@2/bin:/usr/local/lib/ruby/gems/2.7.0/bin:$HOME/.gem/ruby/2.7.0/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/llvm@12/lib"
export CPPFLAGS="-I/usr/local/opt/llvm@12/include"
export PATH="/usr/local/opt/llvm@12/bin:$PATH"

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
