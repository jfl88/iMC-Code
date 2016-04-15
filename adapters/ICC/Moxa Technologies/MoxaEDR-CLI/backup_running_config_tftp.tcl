
#**************************************************************************
# Identification:backup_startup_config_tftp
# Purpose:       backup startup configuration by tftp
#**************************************************************************

set timeout $long_timeout
set WARNING_RESULT true

send "copy running-config tftp $TFTPServer $TFTPFile\r"
sleep 1
expect {
    "Config File is exporting now, please wait." {
        expect {
            "tftp: timeout" {
                set ERROR_MESSAGE "TFTP Operation Timed out - check TFTP Server"
                set ERROR_RESULT true
            } $exec_prompt {
                #success!
            }
        }
    }
    $error_pattern {
        set ERROR_MESSAGE "CLI Command Error."
        set ERROR_RESULT true
    }
}

if { $ERROR_RESULT != true } {
    set WARNING_RESULT false
}
set timeout $standard_timeout
