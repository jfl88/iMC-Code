
#**************************************************************************
# Identification:exit_enable
# Purpose:       exit the "enable" mode on the device
#**************************************************************************

send "exit\r"
expect $exec_prompt
