#!/usr/bin/env ruby
#encoding: utf-8

a = (1..10).to_a

p a
a.pop
p a

a << 10
p a

a.pop
a.push 10
p a
