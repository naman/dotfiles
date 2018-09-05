set -g -x VIRTUALFISH_PYTHON python2
eval (python2 -m virtualfish compat_aliases)
set -g -x HOMEBREW_NO_AUTO_UPDATE 1

set -g fish_user_paths "/usr/local/opt/coreutils/libexec/gnubin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/go/libexec/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/make/libexec/gnubin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/unzip/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/apr-util/bin" $fish_user_paths

set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
set -gx LDFLAGS "-L/usr/local/opt/curl/lib"
set -gx CPPFLAGS "-I/usr/local/opt/curl/include"

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

