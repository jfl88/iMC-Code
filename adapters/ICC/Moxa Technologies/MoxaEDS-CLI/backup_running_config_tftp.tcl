
#**************************************************************************
# Identification:backup_startup_config_tftp
# Purpose:       backup startup configuration by tftp
#**************************************************************************

set timeout $very_long_timeout
set WARNING_RESULT true
send "copy nvram:startup-config "
sleep 1
send "tftp://$TFTPServer/$TFTPFile\r"
expect {
    "*Invalid url*" {
        set ERROR_MESSAGE "Invalid URL Specified for TFTP Server"
        set ERROR_RESULT true
        } "Are you sure you want to start?*" {
            send "y\r"
    		sleep 1
            expect {
                "nvalid url*" {
                    set ERROR_MESSAGE "Invalid URL Specified for TFTP Server"
                    set ERROR_RESULT true
                } "transfer failed!" {
                    set ERROR_MESSAGE "File transfer failed on the device, check TFTP server"
                    set ERROR_RESULT true
                    expect $enable_prompt
                } "completed successfully." {
                    expect $enable_prompt
                }
            }
        }
}
if { $ERROR_RESULT != true } {
    set WARNING_RESULT false
}
set timeout $standard_timeout
