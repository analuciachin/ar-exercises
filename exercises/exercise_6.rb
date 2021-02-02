require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Smith", last_name: "Benjamin", hourly_rate: 50)
@store1.employees.create(first_name: "Harris", last_name: "Amanda", hourly_rate: 40)
@store1.employees.create(first_name: "Harris", last_name: "Taylor", hourly_rate: 40)
@store1.employees.create(first_name: "Jones", last_name: "Matthew", hourly_rate: 60)

@store2.employees.create(first_name: "Williams", last_name: "Melissa", hourly_rate: 60)
@store2.employees.create(first_name: "Davies", last_name: "Michael", hourly_rate: 60)
@store2.employees.create(first_name: "Johnson", last_name: "Thomas", hourly_rate: 60)
@store2.employees.create(first_name: "Walker", last_name: "Peter", hourly_rate: 60)

