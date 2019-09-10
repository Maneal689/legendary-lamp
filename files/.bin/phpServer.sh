#!/bin/sh

if [ $# -eq 1 ]; then
  if [ $1 = "start" ]; then
    echo "starting server"
    #start Apache server
    sudo systemctl start httpd
    #start MariaDb database
    sudo systemctl start mysqld
    echo "done"
  elif [ $1 = "stop" ]; then
    echo "stopping server..."
    #stop Apache server
    sudo systemctl stop httpd
    #stop MariaDb database
    sudo systemctl stop mysqld
    echo "done"
  fi
fi
