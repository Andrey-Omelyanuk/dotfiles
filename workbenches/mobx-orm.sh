#!/bin/sh
PROJECT_NAME=mobx-orm
START_DELAY=10s
cd ~/projects/${PROJECT_NAME}/

tmux new-session       -s mobx-orm   -n docker -d 'docker-compose run --publish 9229:9229 --rm main'
tmux select-window     -t mobx-orm:0
tmux -2 attach-session -t mobx-orm 
