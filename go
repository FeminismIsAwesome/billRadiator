#!/usr/bin/env bash

function install_npm_packages {
  cd client
  npm install
  cd ../server
  npm install
  cd ..
}

function grunt_build {
  cd client
  grunt build
  cd ..
}

function run_client_tests {
  cd client
  grunt test
  cd ..
}

function dev_start {
  cd server
  npm test
  cd ..
}

function prod_start {
  npm start
  cd ..
}

case "$1" in
  "build")
    install_npm_packages
    grunt_build
    ;;
  "test")
    run_client_tests
    ;;
  "start")
    cd server
    if [ "$2" == "dev" ]; then
      npm test
    elif [ "$2" == "prod" ]; then
      npm start
    fi
    cd ..
    ;;
esac

