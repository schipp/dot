# oh-my-zsh
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
export ZSH=/Users/schipp/.oh-my-zsh
# export ZSH_THEME=powerlevel10k/powerlevel10k
export ZSH_THEME=imajes
HIST_STAMPS="yyyy-mm-dd"
plugins=(z)
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# aliases
alias l='ls -GAh'		                        # Preferred 'ls' implementation
alias ll='ls -GAhl'		                        # Preferred 'ls' implementation
alias ..='cd ../'                           # Go back 1 directory level
alias ta="tmux -u attach"
alias ca="conda deactivate; conda activate seis310"
alias sshuhh="ssh u254070@login.cen.uni-hamburg.de"

alias ztheme='(){ export ZSH_THEME="$@" && source $ZSH/oh-my-zsh.sh }'

# PATH
# brew
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/opt/homebrew/bin"
# latex
export PATH="$PATH:/Library/TeX/texbin"
# ruby

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/schipp/conda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/schipp/conda/etc/profile.d/conda.sh" ]; then
        . "/Users/schipp/conda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/schipp/conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# activate conda Environment
conda activate seis311
