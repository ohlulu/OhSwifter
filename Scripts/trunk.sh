#!/bin/sh

source $PWD/Scripts/not_so_important.sh

printf "${RED}pod trunking...\n"
pod trunk push OhSwifter.podspec --allow-warnings

