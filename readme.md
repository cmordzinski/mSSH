mssh is a script automating SSH session creation within tmux.

mssh takes a text file of hosts with one hostname, fqdn, or IP address per line as an argument
and establishes an SSH session with each of the hosts specified in a new tmux pane and synchronizes
keystrokes between all panes. 

To use mssh simply:
1. Create a text file of hosts you would like to SSH into simultaneously
2. run ./mssh.sh [path/to/hosts.txt]
3. When prompted, pass the user you would like to connect as
4. Enter your password

the tmux window will tear down when all SSH sessions are terminated.

Note: mssh is made to be run from within tmux, however, it can be altered to create a new session
and be run from a regular terminal window by altering line 36 to:

tmux new-session ssh "${ssh_list[0]}" ';' \
