```bash
# Get IPs after provisioning

for vm in server node-0 node-1; do
  echo "$vm: $(vagrant ssh $vm -c 'hostname -I' 2>/dev/null)"
done
```

```powershell

foreach ($vm in `server`,`node-0`,`node-1`) {
  $ip = vagrant ssh $vm -c 'hostname -I' 2>$null
  Write-Host "${vm}: $ip"
}

```
