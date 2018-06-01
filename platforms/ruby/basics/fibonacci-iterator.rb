#!/usr/bin/env ruby
#encoding: utf-8

def fib(n)
    ary = [0, 1]
    a, b = ary
    if block_given?
        yield 0
        yield 1
    end
    while n > 0 do
        a, b = b, a + b
        ary << b
        yield b if block_given?
        n -= 1
    end
    ary
end


fib(11) do |v|
 puts "#{v}"
end

p fib(11)
