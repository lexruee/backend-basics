#!/usr/bin/env ruby
#encoding: utf-8

def simple(args)
    p args
end

def call_block(&block)
    r = block.call  
end

def call_block2(&block)
    r = block.call 2, 3
    r + 1
end


simple a: 1, b: 2, c: 3, d: 4

p call_block { 1 + 2 }
p call_block2 { |a, b| a * b }
