class Restaurant
  attr_accessor :name

  @@all= []

  def initialize(name)
    @name = name
    @@self.class.all<< self
  end

  def self.all
  @@self.class.all
  end

  def self.find_by_name(restaurant_name)
    self.find {|restaurant| restaurant.name == restaurant_name}
  end

  def customers
   arr= []
  Customer.all select do |review|
     if customer.review == self
       arr << customer
   end
 end
 #if iterting through customer and review matches restuarant
 #then shove in array


 def reviews
   arr= []
   Review.all.select do |restaurant|
     if review == self
       arr << review
     end
     end
 end #if iterating over reviews and match with restaurant, place in array

 def average_star_rating
   #returns the average star rating
   #for a restaurant based on its reviews
     Review.all select do |rating|
       if rating.review == self
       #need code to return average of those stars that return
 end

 def longest_review

   # Review.map do |review|
   #   review.self.length
   #   if review content > other review_content
   #     puts
 end

end
