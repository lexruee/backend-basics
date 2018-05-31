#!/usr/bin/env ruby
#encoding: utf-8

a = (1..10).to_a

p a
a.shift
p a

a.unshift 1
p a

a.shift 
a.unshift 1
p a
