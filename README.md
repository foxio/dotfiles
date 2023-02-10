# dotfiles

> "I LOVE THIS STUFF, PEOPLES!"  
>           *-- Blake (age 5)*

## Installation

Download setup.sh file and run the following command in terminal

```
sh setup.sh
```

## Configuration

### SSH Keys and Setting up GIT

Run the following commands to create an ssh key and add that key to your clipboard for pasting into github.
*Don't forget to change your email*

```
ssh-keygen -t rsa -b 4096 -C "YOUR_EMAIL_HERE"
eval "$(ssh-agent -s)"
ssh-add $HOME/.ssh/id_rsa
pbcopy < $HOME/.ssh/id_rsa.pub
```

Run the following commmands to set your git configurations in terminal.
*Don't forget to change your email*

git config --global user.name "YOUR_EMAIL_HERE"
git config --global user.email "YOUR_EMAIL_HERE"

### Setting up aliases 

Download .aliases file and run the following command to move it to your User directory.

```
mv ~/Downloads/.aliases ~/.aliases
echo "\nsource $HOME/.aliases" >> $HOME/.zshrc
```

### Setting up nvm

Run the following commands to add NVM to your commandline configuration

```
echo "\nexport NVM_DIR=~/.nvm" >> $HOME/.zshrc
echo "source $(brew --prefix nvm)/nvm.sh" >> $HOME/.zshrc
```


## Clean Up

You'll probably still need to install `Creative Cloud` from Adobe. `XCode` and `Harvest` can be downloaded from the Mac App Store

## Attributions
[Mathias Bynens](https://mths.be/dotfiles)  
[Paul Irish](https://github.com/paulirish/dotfiles)  
[Josh Hoff](https://github.com/losingkeys/dotfiles)
