mssh is a script automating SSH session creation within tmux.

mssh takes a text file of hosts with one hostname, fqdn, or IP address per line as an argument
and establishes an ssh session to each of the hosts specified in a new tmux pane and synchronize
keystrokes between all panes. 

To use mssh simply:
1. Create a text file of hosts you would like to SSH into simultaneously
2. run ./mssh.sh [path/to/hosts.txt]
3. When prompted, pass the username you would like to connect with as an argument
4. Enter your password
5. Profit ???
