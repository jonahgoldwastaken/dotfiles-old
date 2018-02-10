#!/bin/bash

function bold {
  printf "\\033[1m%s\\033[22m" "$1"
}

function green {
  printf "\\033[32m%s\\033[0m" "$1"
}

function red {
  printf "\\033[31m%s\\033[0m" "$1"
}

# https://gist.github.com/JamieMason/4761049
function program_is_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  type $1 >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}

echo "$(bold "Hi! 👋")"
echo "This installer will install eslint globally and copy my config file to your home folder."
echo ""
if [ $(program_is_installed "npm") == 0 ]; then
    NODE=false
    echo "I will also install"
    echo "Homebrew (a package manager for mac, more info at https://brew.sh/)"
    echo "NodeJS"
    echo "NPM"
else
    NODE=true
fi
echo "Do you want to continue?"
read install

clear
if [ $install == "yes" ]; then
    if [ $NODE == false ]; then
        echo "$(bold "$(green "Installing homebrew...")")"
        echo ""
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        sleep 2

        echo
        echo
        echo "$(bold "$(green "Installing NodeJS & NPM...")")"
        echo
        brew install node
        sleep 2

        echo
        echo
    fi
    echo "$(bold "$(green "Installing eslint...")")"
    npm install -g eslint
    sleep 2

    echo
    echo
    echo "$(bold "$(green "Copying over my config (and saving yours in the process)...")")"
    echo
    mv ~/.eslintrc ~/.eslintrc.old
    cp ./.eslintrc ~/.eslintrc
    sleep 2

    clear
    echo 'Everything should now be installed. Have fun! 😊'
    exit
else
    echo 'Too bad. Maybe some other time? 😞'
    exit 1
fi