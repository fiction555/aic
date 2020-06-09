if [[ $(command -v brew) == "" ]]; then
  echo "Installing Hombrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Updating Homebrew"
  brew update
fi

brew list python >> /dev/null
if [[ $? != '0' ]]; then brew install python; fi

which -a ansible >> /dev/null
if [[ $? != '0' ]]; then
pip3 install ansible
fi

#Install zplugin as zsh package manager
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
