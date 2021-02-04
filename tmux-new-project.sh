if ! tmux has-session -t newS; then
echo "That's fine. Lets create a new session."
# // create new tmux session for the project called 'newS' (project session)
# // with first window called 'command'
tmux new -s newS -n command -d;
    # // split the 'command' window into a top and bottom pane (vertical split) 
    tmux split-window -v -t newS:0;
    # // split the 'command' window's top pane into a left & right pane (horizontal split) at 40/60 ratio
    tmux split-window -h -l 60% -t newS:0.0;
    # // TODO: figure out why the resize is not working for the panes

    # // create a new window for coding called 'CODE' (at window index 1 on session 'ps')
    tmux new-window -t newS:1 -n CODE

    # // create a new window for source control called 'git' (at window index 2 on session 'ps')
    tmux new-window -t newS:2 -n git
    # // split the window into a left and right pane at 27/73 ratio
    tmux split-window -h -l 73% -t newS:2
    # // split the left pane into a top and bottom pane at 30/70 ratio
    tmux split-window -v -l 70% -t newS:2.0
fi
