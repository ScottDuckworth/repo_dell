# repo_dell::keys copies and installs the RPM keys for Dell OMSA
# http://docs.puppetlabs.com/puppet/2.7/reference/lang_defined_types.html
define repo_dell::keys ($key) {
  file { "/etc/pki/rpm-gpg/$key":
    ensure => present,
    owner  => 0,
    group  => 0,
    mode   => '0644',
    source => "puppet:///modules/repo_dell/$key"
  }
  
  repo_dell::rpm_gpg_key{ "$key":
    path => "/etc/pki/rpm-gpg/$key",
  }
}