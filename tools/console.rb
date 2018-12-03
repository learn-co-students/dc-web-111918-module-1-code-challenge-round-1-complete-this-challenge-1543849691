require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Rachel", "Novick")
customer2 = Customer.new("Artem", "Bank")
customer3 = Customer.new("Michael", "Chang")
customer4 = Customer.new("Rachel", "Buxton")
customer5 = Customer.new("Rachel", "Novick")

restaurant1 = Restaurant.new("Popeyes")
restaurant2 = Restaurant.new("Panda Express")
restaurant3 = Restaurant.new("Papa Johns")

customer1.add_review(restaurant2, 5, "This place was good.")
# customer2.add_review(restaurant1, 2, "Food stunk")
customer3.add_review(restaurant3, 4, "I like pizza.")
# customer1.add_review(restaurant3, 1, "I've had better.")

review1 = Review.new(restaurant1, customer2, 2, "Food stunk")

review2 = Review.new(restaurant3, customer1, 1, "I've had better.")
review3 = Review.new(restaurant2, customer1, 5, "Still the best.")

puts restaurant2.average_star_rating


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
