echo "Creating a new TMUX Session...\n"
if ! tmux has-session -t newS; then
echo "That's fine. Lets create a new session.\n"
#// create new tmux session for the project called 'newS' (project session)
#// with first window called cmd (aka command center)
tmux new -s newS -n cmd -d;
    #// WINDOW: CMD
    #// split the 'command' window into a top and bottom pane (vertical split) 
    tmux split-window -v -t newS:1;
    #// split the 'command' window's top pane into a left & right pane (horizontal split) at 40/60 ratio
    #tmux split-window -h -l 60% -t newS:1.1;
    #// TODO: figure out why the resize is not working for the panes

    #// WINDOW: CODE
    #// create a new window for coding called 'CODE' (at window index 1 on session 'ps')
    tmux new-window -t newS:2 -n CODE

    #// WINDOW: GIT
    #// create a new window for source control called 'git' (at window index 2 on session 'ps')
    tmux new-window -t newS:3 -n git
    #// split the window into a left and right pane at 27/73 ratio
    tmux split-window -h -l 73% -t newS:3
    #// split the left pane into a top and bottom pane at 30/70 ratio
    tmux split-window -v -l 70% -t newS:3.1
    
    #// WINDOW: MISC
    #// create a new window as a sandbax / tinkering / misc
    tmux new-window -t newS:4 -n misc 
fi
echo "the new TMUX session (newS) should be good to attach to now:"
echo "tmux attach -t <session-name>\n"
echo "To see a list of all sessions type in:"
echo "tmux ls\n"
echo "You can rename the session if you want:"
echo "tmux rename-session -t <old-session-name> <new-session-name>"
