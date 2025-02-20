#!/bin/sh
PROJECT_NAME=dotfiles
START_DELAY=10s
cd ~/projects/${PROJECT_NAME}/

tmux new-session  -s ${PROJECT_NAME}   -n main -d

