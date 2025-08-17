```bash
# Get IPs after provisioning

for vm in server node-0 node-1; do
  echo "$vm: $(vagrant ssh $vm -c 'hostname -I' 2>/dev/null)"
done
```
