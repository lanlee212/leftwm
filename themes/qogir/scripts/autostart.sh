#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &
numlockx on &
