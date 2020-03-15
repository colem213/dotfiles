source "$HOME/git-completion.bash"
alias dc="docker-compose"
alias swac="swiftlint autocorrect"
alias tf="terraform"
alias tfw="tf workspace"
alias g="git"
alias gs="g status"
alias gl="g log"
alias gb="g branch"
alias gbc="gb --merged | egrep -v '(^\*|master)' | xargs git branch -d"
alias ga="g add"
alias gp="g push"
alias gpl="g pull"
alias gd="g diff"
alias gdi="gd --cached"
alias gco="g checkout"
alias gcom="gco master"
alias gc="g commit"
alias gca="gc --amend --no-edit"
alias gr="g rebase"
alias grm="gr master"
alias gri="gr -i master"
alias gf="g fetch"
alias gfp="gf -p"
alias grs="g reset"
alias gst="g stash"
alias gstp="gst pop"
alias gsh="g show"
alias git-changelog="g log --oneline --no-merges --no-decorate"
alias b="bundle"
alias be="b exec"
alias beg="be guard"
alias bef="be foreman start"
alias android="open -a /Applications/Android\ Studio.app"

__git_complete g __git_main
__git_complete gco _git_checkout
__git_complete gb _git_branch
__git_complete gd _git_diff
__git_complete gp _git_push
__git_complete ga _git_add
__git_complete gr _git_rebase
__git_complete gst _git_stash
__git_complete gst _git_show
__git_complete gl _git_log

function git_current_branch {
  echo "$(git branch | grep '\*' | cut -d ' ' -f 2)"
}
alias gpo='gp -u origin $(git_current_branch)'

function aws-profile {
  if [ $# -eq 0 ]; then
    echo Current AWS Profile: $AWS_DEFAULT_PROFILE
  else
    export AWS_DEFAULT_PROFILE=$1
    export AWS_PROFILE=$1
  fi
}
alias awsp="aws-profile"

export ANDROID_HOME=/Users/marc/Library/Android/sdk
eval "$(rbenv init -)"
eval "$(nodenv init -)"

export EDITOR="vim"

export PATH="$PATH:$HOME/work/flutter/bin"
