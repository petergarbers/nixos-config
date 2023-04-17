# export PATH=/usr/local/bin:$PATH
# source /usr/share/zsh/share/antigen.zsh

# Install Antigen
if [ ! -d "$HOME/.antigen" ]; then
  git clone https://github.com/zsh-users/antigen.git $HOME/.antigen
fi

# Load Antigen
source $HOME/.antigen/antigen.zsh

# eval "$(fasd --init auto)"
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle command-not-found
antigen bundle docker
antigen bundle docker-compose
#antigen bundle fasd
antigen bundle git
antigen bundle git-extras
antigen bundle last-working-dir
antigen bundle fbterm
antigen bundle history
antigen bundle lein
antigen bundle screen
antigen bundle ssh-agent
antigen bundle gpg-agent
antigen bundle zsh-completions

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
# Load the theme.
if [[ $TERM == "linux" ]] || [[ $TERM == "screen" ]] ; then
    antigen theme gentoo
else
    antigen theme spaceship-prompt/spaceship-prompt
fi
# Tell Antigen that you're done.
antigen apply

# Aliases
alias lsblk="lsblk -o +LABEL"
alias ip="ip -c"
alias showip="ip --brief a"
alias ssh='TERM=xterm ssh'


# ZSH cache dir config
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# asdf
# source /opt/asdf-vm/asdf.sh