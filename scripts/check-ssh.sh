while read IP FQDN HOST SUBNET; do
  ssh -n root@${IP} uname -o -m
done < ../machines.txt
