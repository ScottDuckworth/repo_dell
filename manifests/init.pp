# Class repo_dell
#
# Actions:
#   Configure the proper repositories and import GPG keys
#
# Reqiures:
#   RedHat/CentOS 5 or 6
#
# Sample Usage:
#  include repo_dell
#
class repo_dell ( ) inherits repo_dell::params {

  if $::osfamily == 'RedHat' {
    if $::architecture == 'x86_64' {
	    file { "/etc/yum.repos.d/dell-omsa-repository.repo":
	      content => template("repo_dell/dell-omsa-repository.repo"),
	      mode => "644",
	    } 
	    repo_dell::keys {'RPM-GPG-KEY-dell':
	      key    => 'RPM-GPG-KEY-dell',
	    }
	    repo_dell::keys {'RPM-GPG-KEY-libsmbios':
	      key    => 'RPM-GPG-KEY-libsmbios',
	    }
	  }  
  } else {
      notice ("Your operating system ${::operatingsystem} or architecture ${::architecture} is not supported for the Dell OMSA repository")
  }

}
