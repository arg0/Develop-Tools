#!/bin/bash

folder_list=`find . -maxdepth 6 -name '.git' -exec dirname {} \;`

for _ in ${folder_list}
do
    cd ./${_}
    echo ">>>>>> Entering ..."
    pwd
    git pull --recurse-submodules
    cd -
done
