# ping-energy
Simple bash script to check multiple VM availability using PING

## Features

- Reads a list of VM hostnames or IP addresses from `VM_hosts.txt`
- Pings each host to check availability
- Reports whether each VM is up or down

## Usage

1. Add the IP addresses or hostnames of your VMs to a file named `VM_hosts.txt`, one per line.
2. Run the script:
    ```bash
    bash ping-energy.sh
    ```
3. The script will output the status (up/down) for each VM.

## Example `VM_hosts.txt`

```
192.168.1.10
server1.example.com
10.0.0.5
```

## Output Example

```
-----------------------------------------
Host file found. Initiating check...
-----------------------------------------
✓ UP: 192.168.1.10
✗ DOWN: server1.example.com
✓ UP: 10.0.0.5
```

## Requirements

- Bash shell
- `ping` utility available on your system

## License

MIT License