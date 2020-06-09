#!/bin/zsh
grep /usr/local/bin/zsh /etc/shells
if [[ $? != '0' ]]; then
  echo '/usr/local/bin/zsh' >>/etc/shells
fi
if [[ $SHELL != '/usr/local/bin/zsh' ]]; then
  chsh -u $USER -s /usr/local/bin/zsh
fi
