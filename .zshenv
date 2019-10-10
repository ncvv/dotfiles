# PATH (user installed binaries have precedence)
export PYENV_ROOT="$HOME/.pyenv"
export PATH=/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:$PYENV_ROOT/bin:$PATH

# PyEnv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Language Environments
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"