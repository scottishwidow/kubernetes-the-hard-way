# create a new `hosts` file and add a header to identify the machines being added

echo "" >hosts
echo "# Kubernetes The Hard Way" >>hosts

# generate a host entry for each machine in the `machines.txt` file and append it to the `hosts` file

while read IP FQDN HOST SUBNET; do
  ENTRY="${IP} ${FQDN} ${HOST}"
  echo $ENTRY >>../hosts
done <../machines.txt

# append the DNS entries from `hosts` to /etc/hosts

cat hosts >>/etc/hosts
