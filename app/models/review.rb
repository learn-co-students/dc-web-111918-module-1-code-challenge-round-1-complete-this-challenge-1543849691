class Review

  attr_accessor :customer, :restaurant, :rating, :content
  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant, content, rating)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    self.class.all << self
  end

end
