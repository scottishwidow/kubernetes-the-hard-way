# set the hostname on each machine listed in the `machines.txt` file

while read IP FQDN HOST SUBNET; do
  CMD="sed -i 's/^127.0.1.1.*/127.0.1.1\t${FQDN} ${HOST}/' /etc/hosts"
  ssh -n root@${IP} "$CMD"
  ssh -n root@${IP} hostnamectl hostname ${HOST}
done <../machines.txt
