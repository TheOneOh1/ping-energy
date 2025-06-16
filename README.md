# ping-energy
Simple bash script to check multiple VM availability using PING

## Why?
- All of our organisation's VMs are hosted on-premises. One day, due to a SMPS issue, connection to storage unit, server was lost and all the VMs went down.
- It was a hassle to check each VM manually. 
- The issue was resolved for the day, however, the very next day, the same issue occurred again but this time it was due to a power outage.
- Again, I had to manually check each VM to see which ones were up and which ones were down.
- This led to a lot of wasted time and effort, especially when there are many VMs to check.
- So, I wrote this script to automate the process of checking VM availability.
- I know its a simple and stupid script, probably no one except me will ever use this, but I thought it might help someone else in a similar situation.

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