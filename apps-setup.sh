#!/usr/bin/env bash
# OSX Applications Setup (dowload and install applications via brew cask)

echo 'Installing homebrew...'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'Homebrew installed'

brew install vim \
             zsh \
             zsh-completions \
             zsh-autosuggestions \
             zsh-syntax-highlighting \
             tree \
             wget \
             pyenv \
             node \
	     awscli \
	     terraform \
	     jmeter \
	     kubernetes \
	     kops \
	     jq

brew update
brew upgrade node

pip install --upgrade setuptools
pip install --upgrade pip

# oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /usr/local/bin/zsh

echo 'Installing packages via brew cask...'

brew cask install google-chrome \
                  git \
                  java \
                  firefox \
                  iterm2 \
                  docker \
                  pycharm-ce \
                  intellij-idea-ce \
                  atom \
                  vlc \
                  postman \
                  skype \
                  spotify

npm install ionic cordova -g

echo '\nPackages installed.'
