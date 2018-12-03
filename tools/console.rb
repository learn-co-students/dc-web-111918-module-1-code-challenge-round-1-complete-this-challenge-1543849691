require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

## TEST RESTAURANTS ##
# def initialize(name)

r1 = Restaurant.new("Bukom Cafe")
r2 = Restaurant.new("Bob's Burgers")
r3 = Restaurant.new("Jollof Palace")
r4 = Restaurant.new("Taqueria San Marcos")
r5 = Restaurant.new("Bakersfield")



## TEST CUSTOMERS ##
# def initialize(first_name, last_name)

ben = Customer.new("Benjamin", "Addai")
jonnel = Customer.new("Jonnel", "Benjamin")
anuj = Customer.new("Anuj", "Sharma")
michael = Customer.new("Michael", "Jordan")
shinik = Customer.new("Shinik", "Cupo")

## TEST REVIEWS ##
# attr_accessor :rest_obj, :cust_obj

rev1 = Review.new(r1, ben, "This place is amazing!", 5)
rev2 = Review.new(r2, jonnel, "This place sucks!", 1)
rev3 = Review.new(r3, shinik, "This place has great vibes!", 4)
rev4 = Review.new(r4, michael, "This place has the best drinks!", 3)
rev5 = Review.new(r5, anuj, "This place is kinda okay!", 2)



##$$$$$$$$ END TESTS  $$$$$$$##

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
