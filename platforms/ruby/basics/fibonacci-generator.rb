#!/usr/bin/env ruby
#encoding: utf-8

class FibonacciGenerator
    include Enumerable

    def initialize(n)
        @n = n
        @a, @b = 0, 1
        @fiber = Fiber.new do 
            loop do
                Fiber.yield @a
                @a, @b = @b, @a + @b
            end
        end
    end

    def each
        @n.times { yield self.next }
    end

    def next
        @fiber.resume
    end

    def rewind
        @a, @b = 0, 1
    end
end

g = FibonacciGenerator.new(11)

g.each do |x|
    puts x
end
