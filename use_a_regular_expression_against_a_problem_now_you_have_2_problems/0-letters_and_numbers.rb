#!/usr/bin/ruby

new_string = /\w+/.match(ARGV[0])
puts(new_string)

# also works:
puts(ARGV[0].gsub(/[^\w]/, ""))
