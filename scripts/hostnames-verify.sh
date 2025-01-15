while read IP FQDN HOST SUBNET; do
  ssh -n root@${IP} hostname --fqdn
done <../machines.txt
