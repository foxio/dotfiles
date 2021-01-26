# dotfiles

> "I LOVE THIS STUFF, PEOPLES!"  
>           *-- Blake (age 5)*

**THIS IS SUPER INVASIVE**
PLEASE DON'T RUN THIS UNLESS YOU KNOW WHAT IT DOES

## Installation
```
cd; curl -#L https://github.com/foxio/dotfiles/archive/main.tar.gz | tar -xzv --strip-components 1 --exclude={README.md,LICENSE.md,.gitignore}; sh $HOME/setup.sh
```

Once this is done, add the `.aliases` file and nvm setup to your .zshrc file

```
echo "\nsource $HOME/.aliases" >> $HOME/.zshrc
echo "\nexport NVM_DIR=~/.nvm" >> $HOME/.zshrc
echo "source $(brew --prefix nvm)/nvm.sh" >> $HOME/.zshrc
```

## Clean Up

Once the above command is run, you can safely delete `setup.sh`.

```
rm $HOME/setup.sh
```

## Attributions
[Mathias Bynens](https://mths.be/dotfiles)  
[Paul Irish](https://github.com/paulirish/dotfiles)  
[Josh Hoff](https://github.com/losingkeys/dotfiles)
