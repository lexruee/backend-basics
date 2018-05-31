#!/usr/bin/env ruby
#encoding: utf-8

if ARGV.length
    nums = ARGV.map { |x| x.to_f }
    sum = nums.inject { |acc,x| acc + x }
    puts "Sum: #{sum}"
end

