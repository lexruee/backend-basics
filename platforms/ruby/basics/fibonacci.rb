#!/usr/bin/env ruby

def fib(n)
    def iter(a, b, n, ary)
        a, b = b, a + b
        ary << b
        iter(a, b, n - 1, ary) if n > 0
    end
    ary = [0, 1]
    iter(0, 1, n, ary)
    return ary
end


fib(11).each_with_index do |i, v|
    puts "f(#{i})=#{v}"
end
