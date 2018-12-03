class Review
  attr_reader :restaurant, :customer, :content, :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(restaurant_obj, customer_obj, content, rating)
    @restaurant = restaurant_obj
    @customer = customer_obj
    @content = content
    @rating = rating
    self.class.all << self
  end

end
