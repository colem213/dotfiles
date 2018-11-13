alias ll="ls -l"
alias lla="ls -la"

alias dc="docker-compose"
alias tf="terraform"
alias tfw="tf workspace"
alias b="bundle"
alias be="b exec"
alias beg="be guard"
alias bef="be foreman start"

if [ -f "$HOME/git-completion.bash" ]; then
  source "$HOME/git-completion.bash"
  alias g="git"
  alias gs="g status"
  alias gl="g log"
  alias gb="g branch"
  alias gbc="gb --merged | egrep -v '(^\*|master)' | xargs git branch -d"
  alias ga="g add"
  alias gp="g push"
  alias gpo="gp -u origin $(gb | grep '\*' | cut -d ' ' -f 2)"
  alias gpl="g pull"
  alias gd="g diff"
  alias gdi="gd --cached"
  alias gco="g checkout"
  alias gcom="gco master"
  alias gc="g commit"
  alias gca="gc --amend --no-edit"
  alias gr="g rebase"
  alias gri="gr -i master"
  alias git-changelog="g log --oneline --no-merges --no-decorate"

  __git_complete g __git_main
  __git_complete gco _git_checkout
  __git_complete gb _git_branch
  __git_complete gd _git_diff
  __git_complete gp _git_push
  __git_complete ga _git_add
  __git_complete gr _git_rebase
fi

if [ -d /c/Users/marc/proj ]; then
  alias proj="cd /c/Users/marc/proj"
fi
