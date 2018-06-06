#!/usr/bin/env ruby
#encoding: utf-8

def receive_block1(num, &block)
    p block.call num
end

def receive_block2(num)
    p yield num
end

b = Proc.new do |x|
    x*x
end

p b.call 2
p b[3]
p b.(4)

receive_block1 5, &b
receive_block2 6, &b

