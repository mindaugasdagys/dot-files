
# Input preferences

# Bash prompt
PS1='\n\u@\h: \w\n→ '

########################
# Environment VARIABLES
#########################

# Ensure dotfiles dotfiles [or in other setups ~/bin] directory is loaded first
export PATH="~/.dotfiles:$PATH"

# ensure yarn works
PATH="$PATH:`yarn global bin`"

# For fasd to work
eval "$(fasd --init auto)"

# Initialize rbenv
#eval "$(rbenv init -)"

# Pyenv
#eval "$(pyenv init -)"

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Use vi-mode in ZSH
# bindkey -vi

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

################
# Bash functions
################

# Makes directory and moves cd to it at the same time
mk () {
  mkdir $1
  cd $1
}

##################
# Aliases go here
##################

# Easier navigation: .., ..., ...., ....., ~ and -  #From Mathias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# List files
alias l='ls -lahG'
# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# Show or hide dotfiles in Finder and restart Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO;  killall Finder /System/Library/CoreServices/Finder.app'

#Brew Cask
alias cask='brew cask'

# Tree - show 1 level deep
alias tree='tree -L 2'

alias ser='live-server'

alias o='atom open'
