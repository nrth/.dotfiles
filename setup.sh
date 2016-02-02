#!/bin/bash
# little script to install dotfiles

dir=~/.dotfiles
backup=~/.dotfiles_backup
files="bashrc vimrc gitconfig zshrc psqlrc"

run()
{
    cd $dir
    echo "Setting up dotfiles from" $dir

    for file in $files; do

        # unlink existent symlink
        if [ -h ~/.$file ]; then
            echo "Unlinking" $file
            unlink ~/.$file
        fi

        # file is not symlink, backup dotfiles
        if [ -f ~/.$file ]; then

            # create backup directory if necessary
            if [ ! -e $backup ]; then
                echo "Creating backup directory at" $backup
                mkdir $backup
            fi

            # backup directory is a file
            if [ ! -d $backup ]; then
                echo "ERROR: $backup not an directory"
                exit 0
            fi

            echo "Saving backup for" $file
            mv ~/.$file $backup/
        fi

        # symlink files from dotfiles repo
        echo "Creating symlink for" $file
        ln -s $dir/$file ~/.$file

    done

    echo "Done :)"
}

run

