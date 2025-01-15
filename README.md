### The following binaries were used instead of the ARM ones from the current version of the guide, all of them are listed in `downloads.txt`. Some scripts were also included as text files in `scripts/` directory. The rest is left as is.

### A `Vagrant` file for provisioning the machines is also included.


### Requirements

## Virtual or Physical Machines

This tutorial requires four (4) virtual or physical ARM64 machines running Debian 12 (bookworm). The following table lists the four machines and their CPU, memory, and storage requirements.

| Name    | Description                 | CPU | RAM   | Storage |
|---------|-----------------------------|-----|-------|---------|
| jumpbox | Administration host         | 1   | 512MB | 10GB    |
| server  | Kubernetes server           | 1   | 2GB   | 20GB    |
| node-0  | Kubernetes worker node      | 1   | 2GB   | 20GB    |
| node-1  | Kubernetes worker node      | 1   | 2GB   | 20GB    |

