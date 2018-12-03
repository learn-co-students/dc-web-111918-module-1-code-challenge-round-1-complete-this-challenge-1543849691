require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

joe = Customer.new("Joe", "Spinelli")
tim = Customer.new("Tim", "Man")
tim2 = Customer.new("Tim", "Johnson")
mary = Customer.new("Mary", "Jane")

chipotle = Restaurant.new("Chipotle")
fiveguys = Restaurant.new("Five Guys")

review1 = joe.new_review(4, fiveguys, "delish burgers")
review2 = tim.new_review(3, chipotle, "mm burritos")
review3 = joe.new_review(1, chipotle, "not so good")

chipotle.longest_review
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
