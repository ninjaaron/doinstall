#!/bin/sh

# make sure arg is escaped for sending over ssh.
arg_esc() {
  local inner="$(echo "$1"|sed "s:':'\"'\"':g")"
  printf "'$inner'\n"
}

host="$1"
user="${2:-$USER}"
esc_user="$(arg_esc $user)"

scp -i ~/.ssh/id_rsa ./doinstall-root.sh "root@$host:"
stty -echo
ssh "root@$host" "sh ~/doinstall-root.sh $esc_user"
stty echo
scp ./doinstall-user.sh "$user@$host:"
ssh "$user@$host" "sh ~/doinstall-user.sh"
