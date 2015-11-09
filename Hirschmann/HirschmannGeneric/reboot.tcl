
#**************************************************************************
# Identification:reload
# Purpose:       reload switch (cold start)
#**************************************************************************

global $enforce_save

if {$enforce_save == "true"} {
    send "copy system:running-config nvram:startup-config\r"
    expect "Are you sure you want to save? (y/n)"
    send "y\r""
    sleep 1
    expect "Configuration Saved!"
}

send "reboot\r"
# expect save dialog?
# confirm reboot?
sleep 10
close
