require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
#puts Store.count

for element in @mens_stores
  puts "Men Store"
  puts "store: #{element.name}       annual revenue: #{element.annual_revenue}"
end


@womens_store = Store.where(annual_revenue: 0..1000000, womens_apparel: true)

for element1 in @womens_store
  puts "Women Store"
  puts "store: #{element1.name}       annual revenue: #{element1.annual_revenue}"
end