#!/bin/sh
PROJECT_NAME=fitness
cd ~/projects/${PROJECT_NAME}/

tmux new-session  -s ${PROJECT_NAME}   -n main -d

