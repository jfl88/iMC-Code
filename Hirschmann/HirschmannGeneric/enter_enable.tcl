
#**************************************************************************
# Identification:enter_enable
# Purpose:       enter the "enable" mode on the device
#**************************************************************************

send "enable\r"
expect {
	-re "$error_pattern" {
		expect -re $exec_prompt
		set ERROR_MESSAGE "The user is not authorized to use the 'enable' command."
		set ERROR_RESULT  true
		#exit
	} $enable_prompt {
		# Success
	}
}
