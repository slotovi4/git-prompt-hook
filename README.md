# git-prompt-hook

Add git hook in .git/hooks

```diff
while true; do
  read -p "Has the app version changed? (Y/n) " yn
  if [ "$yn" = "" ]; then
    yn='Y'
  fi
  case $yn in
      [Yy] ) 
+      . "$(dirname "$0")/husky.sh"; # Here a hook is set on a positive result
        break;;
      [Nn] ) exit 1;;
      * ) echo "Please answer y or n for yes or no.";;
  esac
done
```
