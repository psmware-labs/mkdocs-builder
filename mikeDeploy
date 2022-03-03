#!/bin/bash
#
#   deploy.sh
#   - execute this file from the root filesystem of the repository
#     i.e. bash .github/deploy.sh
#
# This file runs a few 'mike' checks to ensure that the correct version is deployed to the
# GitHub pages , with ending up with a 404 error
set -e
# Ensure that version file exists
if [ -f "VERSION.cfg" ]; then
    source VERSION.cfg
    if [[ $VERSION ]]; then
       echo $VERSION

        if [[ $(mike list) ]]; then
            echo 'A previous deployment exists, no need to initialise'
        else
            mike deploy $VERSION latest
            mike set-default latest
        fi
        mike deploy $VERSION latest --update-alias -p
        mike list
    else
        echo 'No version found in the version file'
        exit 99
    fi
else

# is it is not exist then it will be printed
   echo "No Version File found in project"
   exit 100
fi