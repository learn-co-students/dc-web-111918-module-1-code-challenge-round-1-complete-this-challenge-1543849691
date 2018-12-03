require_relative './restaurant.rb'
require_relative './review.rb'
require_relative './customer.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
puts "Hello world"

Cava = Restaurant.new("Cava")
McDonalds = Restaurant.new("McDonalds")
Subway = Restaurant.new("Subway")
Chopt = Restaurant.new("Chopt")
puts "All restaurants"
puts Restaurant.all

Jonnel_Benjamin = Customer.new("Jonnel","Benjamin")
Caleb_Seibert = Customer.new("Caleb","Seibert")
Brad_Pitt = Customer.new("Brad","Pitt")
Christian_Bale = Customer.new("Christian","Bale")
Micah_Hambrick = Customer.new("Micah","Hambrick")
Brad_Paisley = Customer.new("Brad","Paisley")
puts "All customers"
puts Customer.all

R1 = Review.new(Cava, Jonnel_Benjamin, 5, "This place is amazing and healthy!")
R2 = Review.new(McDonalds, Caleb_Seibert, 4, "I can hang")
R3 = Review.new(Subway, Christian_Bale, 3, "Yay")
R4 = Review.new(Cava, Micah_Hambrick, 2, "It is just alright")
R5 = Review.new(Chopt, Jonnel_Benjamin, 0, "Ugh, where is the protein?")
R6 = Review.new(McDonalds, Micah_Hambrick, 7, "OOOHHH YESSS")
R7 = Review.new(Subway, Caleb_Seibert, 5, "I'm a fan!")
R8 = Review.new(Chopt, Brad_Pitt, 8, "Incredible")
puts "All reviews"
puts Review.all
puts "Find the restaurant"
puts Restaurant.find_by_name("Cava")
puts "List of Subyway customers"
puts Subway.customers
puts "List of Cava customers"
puts Cava.customers
puts "Reviews of Cava"
puts Cava.reviews
puts Customer.find_by_name("Jonnel Benjamin")
puts "Find Caleb"
puts Customer.find_by_name("Caleb Seibert")
puts "All customer names ---------"
puts Customer.all_names
puts "First names of Brad -------"
puts Customer.find_all_by_first_name("Brad")
puts "Review 2's customer objects -------"
puts R2.customer
puts "Review 2's restaurant object -----"
puts R2.restaurant
puts "Review 2 rating"
puts R2.rating
puts "Review 5 rating"
puts R5.rating
puts "Review 6 rating"
puts R6.rating
puts "How many reviews did Micah give?"
puts Micah_Hambrick.num_reviews
puts "What about Brad Paisley?"
puts Brad_Paisley.num_reviews
puts "Christian Bale's restaurants"
puts Christian_Bale.restaurants
puts "Cava Average star rating"
puts Cava.average_star_rating
puts "Longest review for Cava"
puts Cava.longest_review


# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
