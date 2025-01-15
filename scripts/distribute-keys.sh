while read IP FQDN HOST SUBNET; do
  ssh-copy-id -i ../kubessh.pub root@${IP}
done <../machines.txt
