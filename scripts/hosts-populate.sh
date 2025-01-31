# copy the `hosts` file to each machine and append the contents to `/etc/hosts`
while read IP FQDN HOST SUBNET; do
  scp hosts root@${HOST}:~/
  ssh -n \
    root@${HOST} "cat hosts >> /etc/hosts"
done <../machines.txt
