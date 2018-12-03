require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
joe = Customer.new("Joe","Biden")
james = Customer.new("James","Cook")
joe2 = Customer.new("Joe","noname")

olive_garden = Restaurant.new("olive garden")
oak = Restaurant.new("oak restaurant")

joe.add_review(olive_garden,"bla bla bla",3)
joe.add_review(oak,"bla bla bla bla",3)
james.add_review(oak,"bla bla",5)
james.add_review(olive_garden,"bla",2)
james.add_review(olive_garden,"bla bli",1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
