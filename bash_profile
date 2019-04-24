# Proxy control
alias proxy_on='export all_proxy=socks5://127.0.0.1:1086'
alias proxy_off='unset all_proxy'

# Homebrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles

# Emacs
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw'

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Build Python (brew install zlib sqlite3)
export LDFLAGS="-L/usr/local/opt/sqlite/lib -L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include -I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig:/usr/local/opt/zlib/lib/pkgconfig"

# Use newer sqlite3 than that macOS shipped with
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# locale setting
export LC_ALL="en_US.UTF-8"

# =====================================================
# Below are some color settings
# =====================================================

# enable color support of ls and also add handy aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias ls='ls -GF'

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"