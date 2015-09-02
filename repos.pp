class core::repos {
  $repofiles = [ "CentOS-Local.repo", "EPEL.repo", ]
  
  each($repofiles) |String $repo| {
    file { $repo:
      path => "/etc/yum.repos.d/$repo",
      ensure => file,
      source => "puppet:///modules/core/$repo",
    }
  }
}
