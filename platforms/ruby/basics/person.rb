#!/usr/bin/env ruby

class Person
    
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end
end

person = Person.new 'Mike', 27
p person

puts "before chnage"
puts "name: #{person.name}"
puts "age: #{person.age}"

person.name = 'Alex'
person.age = 30

puts "after change"
puts "name: #{person.name}"
puts "age: #{person.age}"


