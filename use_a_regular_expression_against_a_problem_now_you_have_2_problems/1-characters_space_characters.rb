#!/usr/bin/ruby

new_string = /\A\w+ \w*/.match(ARGV[0])
puts(new_string)
