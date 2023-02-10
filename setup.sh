#!/usr/bin/env sh

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git
brew install git-flow
brew install git-lfs
brew install nvm
brew install yarn

brew install --cask alfred
brew install --cask forklift
brew install --cask docker
brew install --cask firefox
brew install --cask google-chrome
brew install --cask local
brew install --cask ngrok
brew install --cask postico
brew install --cask slack
brew install --cask sourcetree
brew install --cask spectacle
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask zoom

modules="
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
