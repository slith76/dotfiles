slith76 dotfiles
===================

This are my dotfiles for vim, zsh ... and an automated install per install.sh.

(thx https://github.com/thoughtbot/dotfiles)

Requirements
------------

Set zsh as your login shell.

    chsh -s /bin/zsh

Install
-------

	git clone git://github.com/slith76/dotfiles.git
	cd dotfiles
	./install.sh

This will create symlinks for config files in your home directory. If you
include the line "DO NOT EDIT BELOW THIS LINE" anywhere in a config file, it
will copy that file over instead of symlinking it, and it will leave
everything above that line in your local config intact.

You can safely run `./install.sh` multiple times to update.

Credits
-------

Thx, 
[thoughtbot](http://thoughtbot.com/)
[vundle](https://github.com/gmarik/vundle)
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
