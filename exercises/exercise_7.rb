require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end


class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 40, less_than_or_equal_to: 200 }
  validates :belongs_to, presence: true
end

puts "Enter a store name"
store_name = $stdin.gets.chomp
create_store = Store.create(name: store_name)
puts create_store.valid?
puts create_store.errors[:annual_revenue]