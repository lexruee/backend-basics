#!/usr/bin/env ruby
#encoding: utf-8

File.open('new.txt', 'w+') do |f|
    f.puts "x\tx**2"
    (0..100).each do |x|
        f.puts "#{x}\t#{x**2}"
    end
end
