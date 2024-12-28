PROJECT_NAME=project-template
START_DELAY=10s
cd ~/projects/${PROJECT_NAME}/
tmux new-session  -s ${PROJECT_NAME}   -n main    -d "make run"
tmux new-window   -t ${PROJECT_NAME}:1 -n web        "sleep ${START_DELAY}; make sh s=web u=node"
tmux new-window   -t ${PROJECT_NAME}:2 -n web-log    "sleep ${START_DELAY}; make log s=web"
tmux new-window   -t ${PROJECT_NAME}:3 -n back       "sleep ${START_DELAY}; make sh s=back-main  u=app"
tmux new-window   -t ${PROJECT_NAME}:4 -n back-log   "sleep ${START_DELAY}; make log s=back-main"
tmux new-window   -t ${PROJECT_NAME}:5 -n worker-log "sleep ${START_DELAY}; docker compose logs -f back-main-worker"
# back to first window
tmux select-window -t ${PROJECT_NAME}:0
# attach to the session
tmux -2 attach-session -t ${PROJECT_NAME}

