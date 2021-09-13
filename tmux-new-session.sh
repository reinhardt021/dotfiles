echo "Creating a new TMUX Session...\n"

SESSION_ID="newS"
INPUT="$1"
echo "//test inputs [$INPUT]"
#INPUT="${1##*( )}"
if ! [$INPUT == ""]
then
    echo "Let's try making the session named [$INPUT]."
    SESSION_ID="$INPUT"
fi

if ! tmux has-session -t $SESSION_ID; then
echo "\nThat's fine. Lets create a new session.\n"
#// create new tmux session for the project called '$SESSION_ID' (project session)
#// with first window called cmd (aka command center)
tmux new -s $SESSION_ID -n cmd -d;
    #// WINDOW: CMD
    #// split the 'command' window into a top and bottom pane (vertical split) 
    tmux split-window -v -t $SESSION_ID:1;
    #// split the 'command' window's top pane into a left & right pane (horizontal split) at 40/60 ratio
    #tmux split-window -h -l 60% -t $SESSION_ID:1.1;
    #// TODO: figure out why the resize is not working for the panes

    #// WINDOW: CODE
    #// create a new window for coding called 'CODE' (at window index 1 on session 'ps')
    tmux new-window -t $SESSION_ID:2 -n CODE

    #// WINDOW: GIT
    #// create a new window for source control called 'git' (at window index 2 on session 'ps')
    tmux new-window -t $SESSION_ID:3 -n git
    #// split the window into a left and right pane at 27/73 ratio
    tmux split-window -h -l 73% -t $SESSION_ID:3
    #// split the left pane into a top and bottom pane at 30/70 ratio
    tmux split-window -v -l 70% -t $SESSION_ID:3.1
    
    #// WINDOW: MISC
    #// create a new window as a sandbax / tinkering / misc
    tmux new-window -t $SESSION_ID:4 -n misc 
fi
echo "the new TMUX session ($SESSION_ID) should be good to attach to now:"
echo "tmux attach -t <session-name>\n"
echo "To see a list of all sessions type in:"
echo "tmux ls\n"
echo "You can rename the session if you want:"
echo "tmux rename-session -t <old-session-name> <new-session-name>"
