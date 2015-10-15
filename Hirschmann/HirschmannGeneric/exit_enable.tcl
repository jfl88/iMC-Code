
#**************************************************************************
# Identification:exit_enable
# Purpose:       exit the "enable" mode on the device
#**************************************************************************

send "exit\r"
sleep 1
expect $exec_prompt
