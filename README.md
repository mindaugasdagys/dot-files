# dotfiles
## General info
https://dotfiles.github.io

## Clean reinstall workflow
https://github.com/driesvints/dotfiles

TODO:
- [ ] relocate mackup folder to iCloud - makes install Dropbox unnecessary on new mac or new user
- [x] make ~/.mackup.cfg

You should also amend your PATH, so that the versions of tools that are installed with Homebrew take precedence over others. To do this, edit the file .bashrc in your home directory to include this line:

```export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"```
