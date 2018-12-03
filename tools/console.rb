require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

robin = Customer.new("Robin", "Kim")
annie = Customer.new("Annie", "Imbrie-Moore")
nancy = Customer.new("Nancy", "Kim")
annie2 = Customer.new("Annie", "Hooper")
# puts Customer.all.inspect

terrain = Restaurant.new("Terrain")
nobu = Restaurant.new("Nobu")
texas_roadhouse = Restaurant.new("Texas Roadhouse")
# puts Restaurant.all.inspect

review1 = robin.add_review(terrain, "Love the vibe but the waitress was rude. Don't know if I want to come back.", 3)
review2 = robin.add_review(nobu, "Perfect but I feel hungry.", 4)
review3 = robin.add_review(texas_roadhouse, "Ehh, not really feeling it.", 1)
review4 = nancy.add_review(nobu, "High quality but too expensive.", 2)
review5 = annie.add_review(terrain, "So pretty! And the food was good.", 5)
review6 = annie.add_review(terrain, "Still really good!", 5)
review7 = annie2.add_review(terrain, "Would come back.", 4)
review8 = annie.add_review(nobu, "Wow, amazing!", 5)
# puts Review.all.count
# puts review1.customer.inspect
# puts review1.restaurant.inspect
# puts review1.content
# puts review1.rating

puts "1"
puts Restaurant.find_by_name("Nobu") == nobu
puts nobu.customers == [robin, nancy, annie]
puts terrain.customers == [robin, annie, annie2]
puts terrain.reviews == [review1, review5, review6, review7]
puts "2"
puts nobu.average_star_rating == 3.7
puts terrain.average_star_rating == 4.3
puts terrain.longest_review == "Love the vibe but the waitress was rude. Don't know if I want to come back."
puts "3"
puts Customer.find_by_name("Nancy Kim") == nancy
puts Customer.find_by_name("Annie Imbrie-Moore") == annie
puts Customer.find_all_by_first_name("Annie") == [annie, annie2]
puts "4"
puts Customer.all_names == ["Robin Kim", "Annie Imbrie-Moore", "Nancy Kim", "Annie Hooper"]
puts robin.num_reviews == 3
puts nancy.num_reviews == 1
puts "5"
puts annie.restaurants == [terrain, nobu]

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
