#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the ~/
chromebook directory to any desired chromebook dotfiles in ~/
############################

dir=~/chromebook                    # chromebook directory
olddir=~/chromebook             # old chromebook backup directory
files=" bashrc bash_profile hushlogin profile tmux.conf vim vimrc "    # list of files/folders to symlink in homedir


# change to the chromebook directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

echo "All done!"

