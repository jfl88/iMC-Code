
#**************************************************************************
# Identification:backup_startup_config_cli
# Purpose:       backup startup configuration by cli
#**************************************************************************

set timeout $standard_timeout
sleep 1
expect -re $exec_prompt {

}

send "show running-config\r"

expect -re !

expect -re $exec_prompt {

}
