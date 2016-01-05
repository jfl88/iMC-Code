
#**************************************************************************
# Identification:reload
# Purpose:       reload switch (cold start)
#**************************************************************************

send "reboot\r"
# expect save dialog?
# confirm reboot?
sleep 10
close
