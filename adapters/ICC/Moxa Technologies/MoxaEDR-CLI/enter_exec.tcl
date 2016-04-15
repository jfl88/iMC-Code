
#**************************************************************************
# Identification:enter_exec
# Purpose:       enter the "exec" mode on the device
#**************************************************************************

set IGNORE_DELAY true
set loop true
set timeout $standard_timeout
while {$loop == "true"} {
	expect {
		$password_prompt {
			if {$password == "\x24password" || $password == ""} {
				set ERROR_MESSAGE "Missing password"
				set ERROR_RESULT true
				set loop false
				#exit
			} else {
                if {$sent_password == "true"} {
                    set ERROR_MESSAGE "Password / Username combination not accepted"
                    set ERROR_RESULT true
                    set loop false
                } else {
    			    send $password
    			    sleep 1
    				send "\r"
    				set sent_password "true"
                }
			}
		} $login_prompt {
			if {$username == "\x24username" || $username == ""} {
				set ERROR_MESSAGE "Missing username"
				set ERROR_RESULT true
				set loop false
				#exit
			} else {
			    sleep 1
				send "$username\r"
				set sent_password "false"
			}
		} $exec_prompt {
			set loop false
			#success
		} timeout {
			set ERROR_RESULT  true
			set ERROR_MESSAGE "Timeout to login. No message receive from device!"
			#exit
			set loop false
		}
	}
}
set IGNORE_DELAY false
