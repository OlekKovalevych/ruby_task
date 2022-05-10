require_relative "lib/sort"

include Sort

array = []

20.times do
  array.append(rand(0...200))
end
puts "Default array"
print array
puts
puts "Sort array"
print Sort.bubble_sort(array)
