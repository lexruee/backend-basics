#!/usr/bin/env ruby

h = {
    :a => 1,
    :b => 2,
    :c => 3,
    :d => 4
}

s = h.map { |x,y| [x,y*y] } .to_h
puts s

s.each do |k,v|
    puts "#{k}:#{v}"
end

b = Hash.new
l = [[:a,1],[:b,2],[:c,3]]

l.each { |k,v| b[k] = v }

puts b
