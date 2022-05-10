require_relative "lib/sub_string"

include SubString

dictionary = ["uby","ine","below","ych","go","going","g","q","own","part",]

puts SubString.substring(File.read("text.txt"),dictionary)

