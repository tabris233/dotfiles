export RACKET="/Applications/Racket v8.3"
export PATH=$RACKET/bin:$PATH
export PATH="/usr/local/opt/llvm/bin:$PATH"

alias tvim='XDG_CONFIG_HOME=$HOME/.config/test_nvim/ nvim'
alias work_dir='cd $HOME/Documents/code/proj'

## nodenv: node version manager
#[[ -d $HOME/.nodenv ]] || curl -fsSL https://raw.githubusercontent.com/nodenv/nodenv-installer/master/bin/nodenv-installer | bash
eval "$(nodenv init -)"


## pyenv: python version manager
#[[ -d $HOME/.pyenv ]] || curl https://pyenv.run | bash
#export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"


## rbenv: ruby version manager
#[[ -d $HOME/.rbenv ]] || curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash #curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash
eval "$(rbenv init -)"

# goenv: go version manager
eval "$(goenv init -)"
