require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

new_store = gets.chomp

@fancy_store = Store.create name: new_store

@fancy_store.errors.full_messages.each do |message|
  puts message
end
