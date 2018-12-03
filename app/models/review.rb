class Review
  attr_accessor :customer, :rating, :restaurant, :content
  @@all = []

  def initialize(customer, rating, restaurant, content)
    @customer = customer
    @rating = rating
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end
  
end
