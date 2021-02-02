require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)
@average_revenue = Store.average(:annual_revenue)

puts "total revenue: #{@total_revenue}"
puts "average revenue: #{@average_revenue}"

@number_stores = Store.where(annual_revenue: 1000000..Float::INFINITY).count
puts "number stores: #{@number_stores}"