#!/usr/bin/env sh

mkdir $HOME/projects

dname="Foxio"
demail="hello@fox.io"

read name "Git Name ($dname): "
read email "Git Email ($demail): "

git config --global user.name ${name-$dname}
git config --global user.email ${email-$demail}

ssh-keygen -t rsa -b 4096 -C ${email-$demail}
eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_rsa
pbcopy < $HOME/.ssh/id_rsa.pub
echo "SSH key copied."

# copy vs-code settings
mkdir -p "$HOME/Library/Application Support/Code/User"
cp "$HOME/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git
brew install git-flow
brew install git-lfs
brew install nvm
brew install yarn

brew cask install alfred
brew cask install cyberduck
brew cask install docker
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install harvest
brew cask install local
brew cask install mysqlworkbench
brew cask install ngrok
brew cask install psequel
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install visual-studio-code

modules="
peterjausovec.vscode-docker
adamvoss.yaml
bungcip.better-toml
dbaeumer.vscode-eslint
eamodio.gitlens
groksrc.haml
vscode-icons-team.vscode-icons
mechatroner.rainbow-csv
"
for module in $modules; do
    code --install-extension "$module" || true
done
