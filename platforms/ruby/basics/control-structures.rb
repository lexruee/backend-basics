#!/usr/bin/env ruby
#encoding: utf-8

x = 10

if x == 10 then
    puts x
end

if x == 10
    puts x
end

if x == 10 then puts 10 end

if x == 10 then puts 10 else puts 20 end

puts x if x == 10


if not x == 5 then
    puts 5
elsif x == 7 then
    puts 7
else
    puts 10
end

if not x == 5
    puts 5
elsif x == 7
    puts 7
else
    puts 10
end


s = 'test'

case s
when 'test'
    puts 'test'
when 'a'
    puts 'a'
when 'b'
    puts 'b'
end


x = 10

r = case x
when 10
    '10'
when 5
    '5'
when 3
    '3'
end

puts r

