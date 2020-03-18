#!/bin/sh

if [ $# == 1 ]; then
  echo "Retrieving absolute path to the project's root..."
  cd $1
  ABS_PATH=$(pwd)
  echo "Absolute project's root path: $ABS_PATH"

  if [ -L "/srv/http" ]; then
    echo "Deleting /srv/http..."
    sudo rm /srv/http
    echo "Done."
  elif [ -d "/srv/http" ]; then
    echo "/srv/http directory already exists and isn't a symbolic link, remove it and try again."
    exit
  fi
  echo "Creating symbolic link to $ABS_PATH..."
  sudo ln -s $ABS_PATH /srv/http
  echo "Created."
else
  echo -e """Usage:
  $0 project_source_path

  project_source_path\tpath to the root of the project to work on with Apache server
  """
fi
