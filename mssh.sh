#!/bin/bash
 

echo
echo '                .d8888b.   .d8888b.  888    888 '
echo '               d88P  Y88b d88P  Y88b 888    888 '
echo '               Y88b.      Y88b.      888    888 '
echo ' 88888b.d88b.   "Y888b.    "Y888b.   8888888888 '
echo ' 888 "888 "88b     "Y88b.     "Y88b. 888    888 '
echo ' 888  888  888       "888       "888 888    888 '
echo ' 888  888  888 Y88b  d88P Y88b  d88P 888    888 '
echo ' 888  888  888  "Y8888P"   "Y8888P"  888    888 '
echo
echo 'multi pane SSH session autmation for tmux'
echo
echo  ' ./mssh.sh [/path/to/hosts.txt]'
echo

read -p 'Username:' uservar
sign='@'
hosts=$1

ssh_list=()
while read -r line
do
 ssh_list+=( $uservar$sign$line )
done < $hosts


command_list=()
for ssh_host in "${ssh_list[@]:1}"
do
 command_list+=( split-pane ssh "$ssh_host" ';' )
done

tmux new-window ssh "${ssh_list[0]}" ';' \
	"${command_list[@]}" \
	select-layout tiled ';' \
	set-option -w synchronize-panes
