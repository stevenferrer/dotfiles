# oh-my-zsh
export ZSH="/home/sf/.oh-my-zsh"
ZSH_THEME=""
plugins=(
    dotenv 
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# binaries
export PATH=$PATH:$HOME/bin

# jdk 
JAVA_ROOT=/usr/lib64/jvm/jre-openjdk
JAVA_HOME=/usr/lib64/jvm/jre-openjdk
JAVA_BINDIR=/usr/lib64/jvm/jre-openjdk/bin

# go
export GO111MODULE=on
export GOPROXY="https://proxy.golang.org,direct"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# starship
eval "$(starship init zsh)"

# rust
source $HOME/.cargo/env
