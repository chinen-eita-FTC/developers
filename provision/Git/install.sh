#!/bin/bash
sudo yum -y install git
sudo su root
GITCOMPLETION=`find / -name "git-completion.bash" -print`
echo "source $GITCOMPLETION" >> ~/.bashrc 
. ~/.bashrc
unset GITCOMPLETION
exit