# Keep Alive

Basic script to keep alive your process.

## Instructions

1. Replace `myprocess` in the script with your actual process name.

2. Save the file as `keepalive.sh` somewhere, `/home/pi/keepalive.sh` is a good choice.

3. Set up cron task by editing crontab with `crontab -e`. Add `* * * * * /home/pi/keepalive.sh` - the script will be run once a minute and restart your process if it has failed.
