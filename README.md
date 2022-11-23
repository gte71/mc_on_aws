# mc_on_aws
## Installation
1. The `minecraft.service` and `minecraft.socket` file should be placed in 
`/etc/systemd/system/` as root user

2. Edit path to minecraft jar file

Run commands
    sudo systemctl enable minecraft.service
    sudo systemctl start minecraft.service

## service commands
sudo systemctl status minecraft
sudo systemctl start minecraft
sudo systemctl stop minecraft

### send commands to minecraft server

    echo "help"  > /run/minecraft.stdin
    echo "/stop" > /run/minecraft.stdin


## References
https://unix.stackexchange.com/questions/598221/how-to-control-systemd-service-using-screen
