#!/usr/bin/env ruby

letter = ARGV[0]
filesystem = '/dev/xvd' + letter

puts `ruby -v`

format_fs = "mkfs.ext4 #{filesystem}"
puts '-> ' + format_fs
`#{format_fs}`

fstab = "echo '#{filesystem} /data ext4 defaults 0 0' >> /etc/fstab"
puts '-> ' + fstab
`#{fstab}`

puts 'The new filesystem has been added'
puts 'sudo reboot, to finish'

