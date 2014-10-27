puppet apply -vd --modulepath=. --exec 'test { "test" : ensure => present }'
