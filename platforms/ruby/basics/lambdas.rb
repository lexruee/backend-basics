#!/usr/bin/env ruby
#encoding: utf-8

adder = lambda {|a, b| a + b}
multiplier = lambda {|a, b| a * b}

puts "add"
puts adder.call 2, 3

puts "multiply"
puts multiplier.call 2, 3


adder = ->(a, b) {a + b}
multiplier = ->(a, b) {a * b}

puts "add"
puts adder.call 2, 3

puts "multiply"
puts multiplier.call 2, 3


