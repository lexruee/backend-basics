#!/usr/bin/env ruby
#encoding: utf-8

a = [1,2,3]
b = (1..5).to_a 

a.each do |x|
    puts x
end

b.each do |x|
    puts x
end

c = b.map {|x| x**2 }

c.each do |x|
    puts x
end

d = c.select {|x| x > 4 }
puts d
