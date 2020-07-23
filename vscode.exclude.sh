#!/bin/bash

# This script needs to be run as bash (not sh) due to use of <()
# Inspired by Michael Anhari's ruby script for the same purpose https://michaelanhari.com/blog/saving-vscode-settings-in-your-dotfiles

if [ -z 'which code' ] ; then
    echo "VS Code installation not found. Cannot install extensions."
else
    code_extensions=$(cat $PWD/vscode/vscode_extensions|sort)
    installed_extensions=$( code --list-extensions|sort);
    uninstalled_extensions=$(comm -23 <( echo "$code_extensions") <(echo "$installed_extensions"))

    printf "Checking for uninstalled VSCode extensions... "

    if [ -z "$uninstalled_extensions" ] ; then
        printf "all good! No uninstalled extensions. \n"
    else
        count=$(echo "$uninstalled_extensions" | wc -w)
        printf "found $count.\n" | xargs

        for extension in $(echo "$uninstalled_extensions" ) ; do
            echo "Installing $extension..."
            code --install-extension "$extension"
        done

        echo "Done!"
    fi
fi