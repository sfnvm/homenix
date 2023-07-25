#!/bin/bash

# # Based on https://gist.github.com/douglas/1287372
# But with a couple of changes

# Store the current dir.
CUR_DIR=$(pwd)

# Stash local.
stash_if_changed () {
    # Check for local change
    local status=( $(git status) );
    # echo ${status[${#status[@]}-1]}
    if [ "${status[${#status[@]}-1]}" != "clean" ]; then
        git add .;
        git stash;
    fi
}

# Let the person running script know what's going on.
echo "Pulling in latest changes for all repositories..."

# Find all git repositories and update it to the master lastest revision.
for i in $(find . -name ".git" | cut -c 3-); do
    echo "";
    echo $i;

    # We have to go to the .git parent directory to call the pull command
    cd "$i";
    cd ..;

    # Fetch all remote branches
    git fetch --all -p;

    # Save current branch into var
    current_branch=$(git branch --show-current);

    # Loop through all branches and pull
    for j in $(git branch | cut -c 2-); do
        # Stash if current branch has changed
        stash_if_changed;

        # Checkout and Pull
        tmp_branch=$(git branch --show-current);
        if [ "$j" != "$tmp_branch" ]; then
            # Switch branch if diff with current one
            git checkout $j;
            # Check for local change
            stash_if_changed;
        fi
        echo "Pulling branch: "$j
        git pull;
    done

    # Checkout and stash back into base
    if [ "$(git branch --show-current)" != "$current_branch" ]; then
        git checkout $current_branch;
        git stash apply;
    fi

    # Lets get back to the CUR_DIR
    cd $CUR_DIR
done

echo "Complete!"
