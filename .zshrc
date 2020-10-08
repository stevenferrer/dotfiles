# ohmyzsh
export ZSH="/home/sf/.oh-my-zsh"
ZSH_THEME=""
plugins=(dotenv)
source $ZSH/oh-my-zsh.sh
# ohmyzsh

# zplug
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load
# zplug


# JDK
JAVA_ROOT=/usr/lib64/jvm/jre-openjdk
JAVA_HOME=/usr/lib64/jvm/jre-openjdk
JAVA_BINDIR=/usr/lib64/jvm/jre-openjdk/bin

# Starship
eval "$(starship init zsh)"

# Go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
