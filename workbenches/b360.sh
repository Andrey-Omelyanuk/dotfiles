#!/bin/sh
PROJECT_NAME=b360
START_DELAY=10s
cd ~/projects/${PROJECT_NAME}/
tmux new-session  -s ${PROJECT_NAME} -n main -d 
