#!/usr/bin/env ruby
#encoding: utf-8

File.open('text.txt') do |f|
    f.each_line do |line|
        puts line
    end
end
