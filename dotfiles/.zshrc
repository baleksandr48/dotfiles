# Path to your oh-my-zsh installation.
export ZSH="/Users/al/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="frisk"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker zsh-syntax-highlighting kubectl zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# my addins for nvm. Link: https://stackoverflow.com/questions/38964222/fresh-install-of-nvm-wont-work
export NVM_HOME=/Users/al/.nvm
export PATH=${PATH}:${NVM_HOME}
source ${NVM_HOME}/nvm.sh
eval "$(jenv init -)"

# my adding for gcloud
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export EDITOR=/usr/bin/nano
export VISUAL=/usr/bin/nano

# Add custom scripts to the path
export PATH=${PATH}:$HOME/bin/k8s

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/al/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/al/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/al/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/al/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
eval "$(pyenv init -)"
