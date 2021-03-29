mSSH is a script automating SSH session creation within tmux. mSSH must be run from within an active tmux session.

mSSH establishes an SSH session with each of the hosts specified in a new tmux pane and synchronizes
keystrokes between all panes. 

mSSH can be used in two ways: 
- Provide a text file of hosts with one hostname, fqdn, or IP address per line as an argument
  - ```./mssh [path/to/hosts.txt]```
- List the desired hosts directly in the terminal when running mSSH
  - ```./mssh host1 host2 ... hostN```


the tmux window will tear down when all SSH sessions are terminated.

