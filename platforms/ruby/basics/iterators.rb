#!/usr/bin/env ruby
#encoding: utf-8

3.times do 
    puts 'Hello World'
end

5.times do |x|
    puts x
end

1.upto(5) do |x|
    puts 'Hello World'
end

5.downto(1) do |x|
    puts 'Hello World'
end


(1..10).each { |x| puts x }
evens = (1..10).select { |x| x.even? }
p evens

odds = (1..10).reject { |x| x.even? }
p odds

prod = (1..5).inject { |acc, n| acc*n }
puts prod

dividable_by_3= (4..12).detect { |n| n % 3 == 0}
puts dividable_by_3

squares = (1..5).map { |x| x*x }
p squares
