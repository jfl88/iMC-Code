# iMC-Code
This repository holds extensions for HP's excellent iMC Network Management software.  It contains adapters that I have created for use with devices that exist in environments that I work on.  I have grouped it into the same folders that are accepted by HP's Configuration Management module, to use you can simply download the folder structure as is and drop it into your HP iMC installation and restart the iMC server.

# Warranty
Under NO CIRCUMSTANCES is any warranty provided for this code.  I cannot guarantee that it is bug-free and I cannot guarantee that its use will not stuff anything up in your environment.  It is purely BETA software, you use at your OWN RISK.
# Contributors
If you would like to contribute to this library with fixes or additional drivers for hardware then simply send a pull request and I will discuss with you!

# Adapters
## Hirschmann
Contains a CLI adapter HirschmannGeneric tested with MACH1000 and MACH100 switches with varying levels of success.  When deployed across a bunch of devices of mixed firmware versions and distance from the iMC instance, some would work and others would not.  After some frustration I started to focus on the SNMP method instead.

HirschmannSNMP is for the more featured MACH series (MACH100GE and MACH1000GE) that support backup to human-readable script file type, while HirschmannSNMPBasic is for others (RS20, MACH100) that only support backup to binary file.

## Moxa Technologies
Still in early development phase.  Have not been able to get it to successfully backup via SNMP.

Unfortunately Moxa places the private SNMP functionality under each device's specific sysOID, and such each sysOID needs its own adapter, as far as I am aware.  They should mostly be similar.  Most EDS private MIBs I have looked at suggest that support for SNMP backup.  The EDR series however has nothing in their private MIBs to suggest support for SNMP backup that I could see and will need to be CLI-based.
