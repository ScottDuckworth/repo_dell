# Configure Configures the Dell OpenManage Linux repositories

# About
Configures the Dell OMSA repository on Enterprise Linux (RHEL, CentOS) clients

============================================
The repository contains an extract of all of the drivers in Server Assistant. 
Because Dell develops, tests, and ships drivers on a per-platform basis, the 
Server Assistant media contains a cross-reference for the drivers belonging to 
each system. We have extracted these drivers into a series of system-specific 
yum repositories.

Because this repository is based on the Server Assistant content, it contains 
drivers only for the Dell PowerEdge Server series. Also, because Server Assistant
only supports RHEL 5, SLES 10, and SLES 11 add RHEL 6, those are the only 
operating systems currently supported in this repository. (For more info, see 
CentOS note below)

Server Assistant background: Dell ships media with each PowerEdge server, one of
which contains Server Assistant. Server Assistant will assist you in 
re-installing the operating system on your Dell PowerEdge server. This media 
contains all of the updated drivers and RPMs that are installed in the Dell 
factory.

The CD containing Server Assistant has been called various things, "Dell Server 
Assistant CD" (DSA), the "Dell Installation and Server Management CD" (ISM), and
"Systems Build and Update Utility" (SBUU).

We expect that in the future, as we get a better way to get the drivers for 
Precision workstations, we will be able to post drivers for Precision. And, of 
course, as Dell expands its Linux offerings, we expect to post other platform 
specific stuff here as well.

http://linux.dell.com/wiki/index.php/Repository/OMSA
============================================
## New in 0.1.0

Initial release. This module is based on the following puppetlabs module:
http://github.com/stahnma/puppet-module-puppetlabs_yum

# Testing

  * This was tested on CentOS 5 and 6 clients
  * Tested using Puppet 3.0.2

# License
Apache Software License 2.0
