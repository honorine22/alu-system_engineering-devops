# This Puppet manifest ensures that the 'holberton' user can log in and open files without any error messages

# Ensure the 'holberton' user exists
user { 'holberton':
  ensure     => 'present',
  home       => '/home/holberton',
  shell      => '/bin/bash',
  managehome => true,
}

# Ensure the 'holberton' user's home directory has the correct permissions
file { '/home/holberton':
  ensure  => 'directory',
  owner   => 'holberton',
  group   => 'holberton',
  mode    => '0755',
  require => User['holberton'],
}

# Ensure that the 'holberton' user has necessary permissions to open files
file { '/home/holberton/somefile.txt':
  ensure  => 'present',
  owner   => 'holberton',
  group   => 'holberton',
  mode    => '0644',
  content => 'This is a sample file.',
}

# Add 'holberton' to a necessary group (e.g., sudoers if needed)
group { 'sudo':
  ensure => 'present',
}

user { 'holberton':
  ensure => 'present',
  groups => ['sudo'],
}
