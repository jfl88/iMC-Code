
#**************************************************************************
# Identification:save
# Purpose:       save running config to nvram
#**************************************************************************

send "copy system:running-config nvram:startup-config\r"
expect "Are you sure you want to save? (y/n)"
send "y\r""
sleep 1
expect "Configuration Saved!"
