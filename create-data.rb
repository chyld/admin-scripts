#!/usr/bin/env ruby

puts `ruby -v`

mkdirs = 'cd /data && mkdir postgresql code && chown postgres postgresql && chown ubuntu:ubuntu code'
puts '-> ' + mkdirs
`#{mkdirs}`

createdb = "su -c '/usr/local/pgsql/bin/initdb -D /data/postgresql' postgres"
puts '-> ' + createdb
puts `#{createdb}`

puts 'The database is now setup'
puts 'sudo reboot, to finish'

