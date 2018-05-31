#!/usr/bin/env ruby
#encoding: utf-8

x = 0
while x < 5 do
    puts x
    x += 1
end

x = 0
until x >= 5 do
    puts x
    x += 1
end

for x in (1..5)
    puts x
end
