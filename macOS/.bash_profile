
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

alias ll='ls -alt'
alias ls='ls -G'
alias phps='php -S localhost:8080'
alias chrome-insecure='open /Applications/Google\ Chrome.app/ --args --disable-web-security --user-data-dir'

alias pv='function packageVersion(){ cat package.json | grep "version"; };packageVersion'
alias bshow='function bowerParamSearch(){ cat bower.json | grep "$1"; };bowerParamSearch'
alias gitbranch='function gitBranchCreateSwitch(){ git branch $1; git checkout $1; };gitBranchCreateSwitch'

alias ns='npm start'
alias nt='npm test'
alias nr='npm run' # See all commands
alias dup='cd laradock; docker-compose up -d nginx mysql; cd ..'
alias ddown='cd laradock; docker-compose down; cd ..'
alias vb='vim ~/.bash_profile'
alias sb='source ~/.bash_profile'

alias lg='git log --oneline --decorate --color'
