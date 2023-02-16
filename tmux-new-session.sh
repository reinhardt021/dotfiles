echo "Creating a new TMUX Session...\n"

#sh=$SHELL
#echo "note: The Shell being used is $sh";
SESSION_ID="newS"
INPUT="$1"
#echo "//test inputs [$INPUT]"
#INPUT="${1##*( )}"
#TODO: solve bug
#/Users/reinhardtc/dotfiles/tmux-new-session.sh: line 7: [AAA: command not found
#if ! ["$INPUT" == ""]
if ! ["$INPUT" -eq ""]
then
    echo "Let's try making the session named [$INPUT]."
    SESSION_ID="$INPUT"
fi

if ! tmux has-session -t $SESSION_ID; then
echo "No worries if we can't find your session. Lets create a new session.\n"
#// create new tmux session for the project called '$SESSION_ID' (project session)
#// with first window called cmd (aka command center)
tmux new -s $SESSION_ID -n cmd -d;
    #// WINDOW: CMD
    #// split the 'command' window into a top and bottom pane (vertical split) 
    tmux split-window -v -t $SESSION_ID:1;
    #// split the 'command' window's top pane into a left & right pane (horizontal split) at 40/60 ratio
    tmux split-window -v -t $SESSION_ID:1.1;
    #tmux send-keys -t $SESSION_ID:1.2 "watch -n 10 kubectl config get-contexts" Enter;
    #tmux split-window -h -l 60% -t $SESSION_ID:1.1;
    #// TODO: figure out why the resize is not working for the panes

    #// WINDOW: DB 
    tmux new-window -t $SESSION_ID:2 -n db;
    #// split the 'database' window into a top and bottom pane (vertical split) 
    tmux split-window -v -t $SESSION_ID:2;
    #// split the top 'database' window again (vertical split) 
    tmux split-window -v -t $SESSION_ID:2.1;
    
    #// WINDOW: GIT
    #// create a new window for source control called 'git' (at window index 2 on session 'ps')
    tmux new-window -t $SESSION_ID:3 -n git;
    #// split the window into large top and small bottom
    tmux split-window -v -l 20% -t $SESSION_ID:3; 
    #// split the top window into a left and right pane at 27/73 ratio
    tmux split-window -h -l 27% -t $SESSION_ID:3.1;
    #tmux split-window -h -l 73% -t $SESSION_ID:3;
    #// split the left pane into a top and bottom pane at 30/70 ratio
    tmux split-window -v -l 70% -t $SESSION_ID:3.2;
    #tmux send-keys -t $SESSION_ID:3.1 "watch -n 5 'git log --format=\"%C(dim white)%d%C(reset) %s %C(dim white)[%ae %h %cr]%C(reset)\" --graph'" Enter;
    tmux send-keys -t $SESSION_ID:3.1 "git log --format=\"%C(dim white)%d%C(reset) %s %C(dim white)[%ae %h %cr]%C(reset)\" --graph" Enter;
    tmux send-keys -t $SESSION_ID:3.1 "q" Enter;
    tmux send-keys -t $SESSION_ID:3.2 "watch -n 10 git branch" Enter;
    tmux send-keys -t $SESSION_ID:3.3 "watch -n 10 git stash list" Enter;
    tmux send-keys -t $SESSION_ID:3.4 "clear" Enter;
    #tmux send-keys -t $SESSION_ID:3.4 "gs" Enter;
    tmux send-keys -t $SESSION_ID:3.4 "watch -n 10 git status" Enter;
    
    #// WINDOW: CODE
    #// create a new window for coding called 'CODE' (at window index 1 on session 'ps')
    tmux new-window -t $SESSION_ID:4 -n app;
    tmux send-keys -t $SESSION_ID:4.1 "nv" Enter;
    #tmux send-keys -t $SESSION_ID:4.1 "C-o"; # // can't seem to send this second command right away

    #// WINDOW: MISC
    #// create a new window as a sandbax / tinkering / misc
    tmux new-window -t $SESSION_ID:5 -n x; 
fi
echo "The new TMUX session ($SESSION_ID) is ready to ATTACH to now:"
echo "$ tmux attach -t <session-name>"
echo "To LIST of all sessions:"
echo "$ tmux ls"
echo "To RENAME a session:"
echo "$ tmux rename-session -t <old-session-name> <new-session-name>\n"

echo "// tmux sessions"
tmux ls;
