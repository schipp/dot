# If you come from bash you might have to change your $PATH.

# Path to your oh-my-zsh installation.
export ZSH=/Users/sven/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=spaceship
SPACESHIP_TIME_SHOW=true

HIST_STAMPS="yyyy-mm-dd"

plugins=(python z)
source $ZSH/oh-my-zsh.sh

# User configuration

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias l='ls -G'		                        # Preferred 'ls' implementation

alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias matlab='/usr/local/MATLAB/R2013b/bin/matlab'
alias srvx8='srvx8.img.univie.ac.at'
alias vim="/usr/local/opt/vim/bin/vim"
#Path
export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:~/bin/"
export PATH="/Applications/GMT-5.2.1.app/Contents/Resources/bin:$PATH" #GMT
export PATH="/Applications/MATLAB_R2015a.app/bin:$PATH" #MATLAB
# SAC Paths
export SACHOME="/Users/sven/Documents/code/external/sac"
export SACAUX="${SACHOME}/aux"
export PATH="${PATH}:${SACHOME}/bin"

# CPS Paths
export PATH="/opt/local/bin:/usr/local/bin:/opt/local/sbin:$PATH"
export PATH="$HOME/bin:$HOME/PROGRAMS.330/bin:$PATH"

export PATH="/Users/sven/anaconda3/bin:$PATH"

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

# SU Paths
export CWPROOT=$HOME/cwp/44R1/
export PATH=$PATH:$HOME/cwp/44R1/bin

# CONDA Environment
source activate sven

# Add code base dir to python path
export PYTHONPATH="$PYTHONPATH:/Users/sven/Documents/code/"
# PYTHON LIB Path for Swift PythonKit
export PYTHON_LIBRARY="/Users/sven/anaconda3/envs/sven/lib/libpython3.7m.dylib"

# automatically launch into tmux
if [ "$TMUX" = "" ]; then tmux -u attach; fi
