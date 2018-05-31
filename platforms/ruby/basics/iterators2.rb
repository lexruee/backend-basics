#!/usr/bin/env ruby
#encoding: utf-8

def sequence(start, stop, step=1)
    x = start
    while x < stop do
        yield x
        x += step
    end

end

sequence(1,10,1) do |x|
    puts x
end

sequence(1,10,2) { |x| puts x }
