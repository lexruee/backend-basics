#!/usr/bin/env ruby
#encoding: utf-8

def sum(a, *rest)
    rest.inject(a) {|acc, n| n + acc}
end

def prod(a, *rest)
    rest.inject(a) {|acc, n| n * acc}
end

def max(a, *rest)
    rest.inject(a) {|x, y| x > y ? x: y}
end

def min(a, *rest)
    rest.inject(a) {|x, y| x < y ? x: y}
end


puts "sum(1)"
p sum(1)

puts "sum(1, 2, 3, 4)"
p sum(1, 2, 3, 4)

puts "prod(1, 2, 3, 4)"
p prod(1, 2, 3, 4)

puts "max(1, 2, 3, 4)"
p max(1, 2, 3, 4)

puts "min(4, 3, 2, 1)"
p min(4, 3, 2, 1)

