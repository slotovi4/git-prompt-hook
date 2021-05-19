#!/bin/sh
# husky

# Created by Husky v4.3.8 (https://github.com/typicode/husky#readme)
#   At: 16.05.2021, 19:58:51
#   From: /Users/romanbruns/Documents/projects/svelte-typescript-app/node_modules/husky (https://github.com/typicode/husky#readme)

exec < /dev/tty

while true; do
  read -p "Has the app version changed? (Y/n) " yn
  if [ "$yn" = "" ]; then
    yn='Y'
  fi
  case $yn in
      [Yy] ) . "$(dirname "$0")/husky.sh"; break;;
      [Nn] ) exit 1;;
      * ) echo "Please answer y or n for yes or no.";;
  esac
done
