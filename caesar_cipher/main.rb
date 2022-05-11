# frozen_string_literal: true

require_relative 'lib/caesar'

include Caesar

puts 'Enter a massage'

puts "your cipler massege =>  #{Caesar.cipler(gets.chomp)}"
