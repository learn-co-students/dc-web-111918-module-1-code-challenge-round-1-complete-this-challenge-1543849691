require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
Customer.new("Kiley", "Bobbitt")
Customer.new("Lindsay", "Heebner")
Customer.new("Brian", "Killheffer")




Review.new("Kiley", "Right Proper", 5, "great beer")
Review.new("Lindsay", "Maydan", 5, "delicious")
Review.new("Brian", "Ben's Chili Bowl", 1, "I was drunk when I ate it and now I feel terrible")








binding.pry
0 #leave this here to ensure binding.pry isn't the last line
