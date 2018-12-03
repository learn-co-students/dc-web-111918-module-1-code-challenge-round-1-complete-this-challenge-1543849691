require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1 = Restaurant.new("Daikaya")
rest2 = Restaurant.new("Kotobuki")
rest3 = Restaurant.new("Bar Mini")
rest4 = Restaurant.new("Roses Luxury")
rest5 = Restaurant.new("Ambar")


cust1 = Customer.new("Beau", "Jepson")
cust2 = Customer.new("Mandy", "Pilaud")
cust3 = Customer.new("Joe", "Spinelli")
cust4 = Customer.new("Rachel", "Novick")
cust5 = Customer.new("JC", "Chang")

rev1 = Review.new(cust1, rest1, 1, "Content String 1")
rev2 = Review.new(cust2, rest2, 2, "Content String 2")
rev3 = Review.new(cust3, rest3, 3, "Content String 3")
rev4 = Review.new(cust4, rest4, 4, "Content String 4")
rev5 = Review.new(cust5, rest5, 5, "Content String 5")
rev6 = Review.new(cust1, rest5, 4, "Content String 6")
rev7 = Review.new(cust2, rest4, 3, "Content String 7")
rev8 = Review.new(cust3, rest2, 2, "Content String 8")
rev9 = Review.new(cust4, rest3, 1, "Content String 9")
rev10 = Review.new(cust5, rest1, 2, "Content String 10")
rev11 = Review.new(cust1, rest2, 3, "Content String 11")
rev12 = Review.new(cust2, rest3, 4, "Content String 12")
rev13 = Review.new(cust3, rest4, 5, "Content String 13")
rev14 = Review.new(cust4, rest5, 4, "Content String 14")
rev15 = Review.new(cust5, rest1, 3, "Content String 15")
rev16 = Review.new(cust1, rest3, 2, "Content String 16")
rev17 = Review.new(cust2, rest5, 1, "Content String 17")
rev18 = Review.new(cust3, rest1, 2, "Content String 18")
rev19 = Review.new(cust4, rest2, 3, "Content String 19")
rev20 = Review.new(cust5, rest3, 3, "Content String 20")


#good puts Review.all
#good puts Customer.all
#good puts Restaurant.all


puts "customer tests"
puts cust1.full_name
puts Customer.find_by_name("Beau Jepson")
puts Customer.find_all_by_first_name("Beau")
puts Customer.all_names
puts cust2.add_review(rest1, 3, "Content String 21")
puts cust3.num_reviews
puts cust4.restaurants

puts "restaurant tests"
puts Restaurant.find_by_name("Ambar")
puts rest1.customers
puts rest2.reviews
puts rest3.average_star_rating
puts rest4.longest_review ############working on

puts "review tests"
puts rev1.customer_m
puts rev2.restaurant_m
puts rev3.rating_m
puts rev4.content_m




Pry.start
0 #leave this here to ensure binding.pry isn't the last line
