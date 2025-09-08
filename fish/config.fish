if status is-interactive
    # Commands to run in interactive sessions can go here
    
    set -Ux PYENV_ROOT $HOME/.pyenv
    
    # PATH
    set -U fish_user_paths $HOME/.local/bin/ /opt/homebrew/bin /opt/homebrew/sbin $HOME/bin /usr/local/bin /usr/bin /bin $PYENV_ROOT/bin $fish_user_paths
    
    # Python
    set -xg PYTHONDONTWRITEBYTECODE 1

        # Brew (no aut)
    # if [[ $OSTYPE == 'darwin'* ]]; then
    set -xg HOMEBREW_NO_AUTO_UPDATE 1
    set -xg HOMEBREW_NO_ANALYTICS 1
    set -xg HOMEBREW_CASK_OPTS "--appdir=/Applications"
    set -xg HOMEBREW_NO_INSECURE_REDIRECT 1

    # test -e "${HOME}/.iterm2_shell_integration.zsh" |& source "${HOME}/.iterm2_shell_integration.zsh"
    # fi

    # Preferred editor for local and remote sessions
    # if [[ -n $SSH_CONNECTION ]]; then
        # set -xg EDITOR 'vim'
    # else
        set -xg EDITOR 'code'
    # fi

    pyenv init - fish | source
    source (pyenv virtualenv-init -|psub)
end
