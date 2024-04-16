require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find(1) # same as Store.find_by(id: 1)
@store2 = Store.find(2)

puts "First store name before update: #{@store1.name}"

@store1.name = "Whistler"
@store1.save

puts "First store name after update: #{@store1.name}"
