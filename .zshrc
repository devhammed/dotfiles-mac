#--- Path to oh-my-zsh installation ---#
export ZSH="/Users/hammedo/.oh-my-zsh"

#--- Set name of the theme to load ---#
ZSH_THEME=""

#--- Which plugins would you like to load? ---#
plugins=(
  git
  gh
  npm
  pip
  yarn
  sudo
  docker
  wp-cli
  golang
  flutter
  artisan
  direnv
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)

#--- Let's begin ---#
source $ZSH/oh-my-zsh.sh

#--- User configuration ---#

# Aliases
alias cat="bat"
alias \?='gh copilot explain'
alias \?\?='gh copilot explain'

# load Homebrew ZSH autocompletions
if type brew &>/dev/null; then
  fpath+="$(brew --prefix)/share/zsh/site-functions"

  autoload -Uz compinit

  if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
    compinit
    touch ~/.zcompdump
  else
    compinit -C
  fi
fi

# Setup CLI tools
export EDITOR="vim"
export VISUAL="phpstorm"
export BROWSER="chrome"

# Setup C libraries
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export LANG=en_NG.UTF-8
export HOMEBREW_NO_INSTALL_FROM_API="1"

# Load other binaries
export PATH="/usr/local/opt/ruby/bin:${HOME}/.local/bin:${HOME}/.composer/vendor/bin:${HOME}/Library/Android/sdk/tools:${HOME}/Library/Android/sdk/platform-tools:${HOME}/.pub-cache/bin:${PATH}"

# Setup SSH-Agent
if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval "$(ssh-agent -s)"
fi

# Add SSH keys to Agent
ssh-add ~/.ssh/id_personal > /dev/null 2>&1

ssh-add ~/.ssh/id_vertex > /dev/null 2>&1

ssh-add ~/.ssh/id_merck > /dev/null 2>&1

ssh-add ~/.ssh/id_decagon > /dev/null 2>&1

# Disable direnv messages
export DIRENV_LOG_FORMAT=""

# Load Zoxide
eval "$(zoxide init zsh)"

# Load Starship Prompt
eval "$(starship init zsh)"

# Herd injected NVM configuration
export NVM_DIR="/Users/hammedo/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/hammedo/Library/Application Support/Herd/config/php/83/"

# Herd injected PHP binary.
export PATH="/Users/hammedo/Library/Application Support/Herd/bin:$PATH"

# Herd injected PHP 8.0 configuration.
export HERD_PHP_80_INI_SCAN_DIR="/Users/hammedo/Library/Application Support/Herd/config/php/80/"

# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/hammedo/Library/Application Support/Herd/config/php/82/"

# Extra Paths
export PATH="/usr/local/sbin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/hammedo/.local/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hammedo/.local/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/hammedo/.local/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hammedo/.local/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/hammedo/Library/Application Support/Herd/config/php/84/"

# Herd injected PHP 7.4 configuration.
export HERD_PHP_74_INI_SCAN_DIR="/Users/hammedo/Library/Application Support/Herd/config/php/74/"

# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/hammedo/Library/Application Support/Herd/config/php/81/"


# Herd injected PHP 8.5 configuration.
export HERD_PHP_85_INI_SCAN_DIR="/Users/hammedo/Library/Application Support/Herd/config/php/85/"
