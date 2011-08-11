# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:$PATH

# Add an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

export HISTFILESIZE=1000000000
export HISTSIZE=1000000

# Color prompt with showing current git branch
GIT_PS1_SHOWDIRTYSTATE=true
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[00m\]\[\033[01;31m\]$(__git_ps1 " {%s}")\[\033[00m\]\$ '

# Custom git aliases
alias gitk='gitk --all'
alias gitx='gitx --all'

# Other custom aliases
alias e='gmate'
alias ls='ls -FG'
alias ll='ls -l'
alias refresh='cd && cd ~-'
alias be='bundle exec'
alias bop='bundle open'
alias rbp_report='rails_best_practices -f html --with-textmate && open rails_best_practices_output.html'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
