if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim=nvim
alias l='eza -a --group-directories-first'
alias ll='eza -alT --group-directories-first --ignore-glob=".git"'
alias lla='l -lT'
alias lw='l -lT -L1'
alias lww='l -lT -L2'
alias lwww='l -lT -L3'
alias lwwww='l -lT -L4'
