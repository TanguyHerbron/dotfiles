# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/tanguy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Add w3m to the path to allow image preview in the terminal
export PATH="$PATH:/usr/lib/w3m"

# Custom almond scripts
export PATH="$PATH:$HOME/.almond/"

# NPM path for global installation
PATH="$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

# Add libvips environment variable for pyvips
export LD_LIBRARY_PATH=/usr/local/lib/

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/tanguy/Downloads/tmp/google-cloud-sdk/path.zsh.inc' ]; then . '/home/tanguy/Downloads/tmp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/tanguy/Downloads/tmp/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/tanguy/Downloads/tmp/google-cloud-sdk/completion.zsh.inc'; fi

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# >>> conda initialize >>>
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
# <<< conda initialize <<<

# Update dir_colors according to the specified dotfile
eval $(dircolors -b ~/.config/dir_colors)

# Enable vim controls in the terminal
set -o vi

bindkey "^?" backward-delete-char

# Enable backward incremental search
bindkey '^R' history-incremental-search-backward

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias socrates="ssh socrates"
alias almond_droplet="ssh tanguy@almond_droplet -p 22222"
alias almond=". almond"
alias lc="docker container ls"
alias vim="nvim"

alias resource="source ~/.zshrc"
alias almond-dev="~/.tmux/almond-dev"

# Dotfiles alias for easy dotfile management
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no

# Switch between nvidia and intel drivers with one command
alias driver='optimus-manager --no-confirm --switch'

# Enable nvidia drivers and trigger the default multi-head configuration
alias multihead='touch /tmp/multihead && driver nvidia'

# Add an alias to the powerpill wrapper for pacman
alias pac='sudo pacman -S'

# When opening top, use bottom
alias top="btm"

alias gitg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

alias tlmgr='/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode'

alias gitcommiiiiiiiiiiiiiit='cz'

alias havpn='~/.config/halia-switch.sh'

alias clip='xclip -selection primary'
