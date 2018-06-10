#!/usr/bin/env ruby
#encoding: utf-8

threads = []

threads << Thread.new do
    sleep 1
    100.times do
        puts 't1'
    end
end

threads << Thread.new do
    sleep 1
    100.times do
        puts 't2'
    end
end

threads << Thread.new do
    sleep 1
    100.times do
        puts 't3'
    end
end

threads.each do |t|
    t.join
end
