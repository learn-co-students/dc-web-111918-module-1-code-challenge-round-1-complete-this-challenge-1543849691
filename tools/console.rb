require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Ash", "Zaki")
customer2 = Customer.new("Kat", "Happy")
customer3 = Customer.new("Ammy", "Ninja")

restaurant1 = Restaurant.new("Nanny O' Brian")
restaurant2 = Restaurant.new("Seafood Restaurant")
restaurant3 = Restaurant.new("Oki Bowl Ramen")

# add_review1 = add_review.new(restaurant1, "nice", 5)
# add_review2 = add_review.new(restaurant2, "nice", 5)


review1 = Review.new(customer1, restaurant1, 5 , "Good")
review2 = Review.new(customer2, restaurant2, 1 , "Bad")
review3 = Review.new(customer2, restaurant1, 3, "ok")
review4 = Review.new(customer3, restaurant3, 5, "Very good")






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
