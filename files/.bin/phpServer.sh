#!/bin/sh

display_usage () {
  echo """Usage:
  phpServer.sh start|stop|restart|status

  start -- start the php server, including httpd (Apache) server and mysqld (MariaDb) server
  stop -- stop the php server, including httpd (Apache) server and mysqld (MariaDb) server
  restart -- restart the php server, including httpd (Apache) server and mysqld (MariaDb) server
  status -- show the current server's status (open|close)"""
}

start () {
  sudo systemctl start $1
}

stop () {
  sudo systemctl stop $1
}

restart () {
  stop $1
  start $1
}

if [ $# -eq 1 ]; then
  if [ $1 = "start" ]; then
    echo "starting server..."
    #start Apache server
    start httpd
    #start MariaDb database
    start mysqld
    echo "done"
  elif [ $1 = "stop" ]; then
    echo "stopping server..."
    stop httpd
    stop mysqld
    echo "done"
  elif [ $1 = "restart" ]; then
    echo "restarting httpd (Apache) service..."
    restart httpd
    echo "done"
    echo "restarting mysqld (MariaDb) service..."
    restart mysqld
    echo "done"
  elif [ $1 = "status" ]; then
    HTTPD_STATUS=$(systemctl is-active httpd)
    MYSQL_STATUS=$(systemctl is-active mysqld)
    echo "httpd (Apache) service ($HTTPD_STATUS)"
    echo "mysqld (MariaDb) service ($MYSQL_STATUS)"
  else
    display_usage
  fi
else
  display_usage
fi
