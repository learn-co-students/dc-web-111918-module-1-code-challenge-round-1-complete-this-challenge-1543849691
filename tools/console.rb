require_relative '../config/environment.rb'
require_relative './models/customer.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1= Customer.new("Shinik","Cupo")
cust2= Customer.new("Angelo","Cupo")
cust3= Customer.new("Shana","Cupo")
cust4= Customer.new("Vanessa","Cupo")

puts cust1.full_name
puts cust2.full_name
puts cust3.full_name
puts cust4.full_name

# puts Customer.find_by_name(Shana Cupo)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
