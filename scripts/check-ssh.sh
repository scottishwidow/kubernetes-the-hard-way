# once each key is added, verify SSH public key access is working

while read IP FQDN HOST SUBNET; do
  ssh -n root@${IP} uname -o -m
done <../machines.txt
