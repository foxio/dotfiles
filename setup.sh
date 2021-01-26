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
mv "$HOME/vsc_settings.json" "$HOME/Library/Application Support/Code/User/settings.json"

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git
brew install git-flow
brew install git-lfs
brew install nvm
brew install yarn

brew install --cask alfred
brew install --cask cyberduck
brew install --cask docker
brew install --cask dropbox
brew install --cask firefox
brew install --cask font-fira-code
brew install --cask google-chrome
brew install --cask local
brew install --cask mysqlworkbench
brew install --cask ngrok
brew install --cask psequel
brew install --cask slack
brew install --cask sourcetree
brew install --cask spectacle
brew install --cask spotify
brew install --cask virtualbox
brew install --cask visual-studio-code
brew install --cask zoom

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
