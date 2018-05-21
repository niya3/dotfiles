[ $HOSTNAME == qwerty ] && xrandr --output eDP1 --gamma 0.7:0.7:0.7 --brightness 0.8

# dotfiles in bare git repo: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

setxkbmap -layout 'us,ru' -option'' # reset
xmodmap ~/.xmodmaprc # set: Ctrl - en, Shift-Ctrl - ru

