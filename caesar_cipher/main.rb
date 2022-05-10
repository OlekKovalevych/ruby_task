
require_relative 'lib/caesar'

include Caesar


puts "Enter a massage"
puts "your cipler massege => " + Caesar.get_cipler(gets.chomp)


