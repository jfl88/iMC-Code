
#**************************************************************************
# Identification:initialize
# Purpose:       initialize variables
#**************************************************************************

set standard_timeout 20
set long_timeout 120
set very_long_timeout 300
set very_very_long_timeout 2400

#Image sync and software center through VPN might take hours
set squeeze_timeout 15000
set login_prompt "User:"
set password_prompt "Password:"
set exec_prompt "Hirschmann MACH) >"
set enable_prompt "Hirschmann MACH) #"
set enforce_save false
set timeout $standard_timeout
set more_prompt "--More-- or (q)uit"
set pause $more_prompt
set sent_password "false"
set banner_skip_repeat 0
set error_pattern "(.*% Invalid input detected .*)"

set ERROR_RESULT false
set ERROR_MESSAGE ""
