require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Geoff", last_name: "Phillips", hourly_rate: 100)
@store1.employees.create(first_name: "Poo", last_name: "Poo", hourly_rate: 60)
@store1.employees.create(first_name: "What", last_name: "Who", hourly_rate: 50)
@store1.employees.create(first_name: "Sure", last_name: "Sure", hourly_rate: 50)
@store1.employees.create(first_name: "Good", last_name: "Job", hourly_rate: 50)
@store1.employees.create(first_name: "Huh", last_name: "Bah", hourly_rate: 50)

@store2.employees.create(first_name: "Hum", last_name: "Bug", hourly_rate: 60)
@store2.employees.create(first_name: "Stuff", last_name: "Things", hourly_rate: 60)
@store2.employees.create(first_name: "Green", last_name: "Eggs", hourly_rate: 60)
@store2.employees.create(first_name: "And", last_name: "Ham", hourly_rate: 60)
@store2.employees.create(first_name: "I", last_name: "am", hourly_rate: 60)
@store2.employees.create(first_name: "Sam", last_name: "I", hourly_rate: 60)
@store2.employees.create(first_name: "Am", last_name: "Yeah", hourly_rate: 60)

pp Employee.where(store: 1)
