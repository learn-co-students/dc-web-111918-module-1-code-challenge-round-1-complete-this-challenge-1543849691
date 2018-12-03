class Review
  attr_reader :restaurant_obj, :customer_obj
  attr_accessor :rating, :content

  @@all = []

  def initialize(restaurant_obj, customer_obj, rating, content)
    @restaurant = restaurant_obj
    @customer = customer_obj
    @rating = rating
    @content = content
    self.class.all << self
  end

  def self.all
    @@all
  end #works

  def customer
    @customer
  end #works

  def restaurant
    @restaurant
  end #works

  def rating
    @rating
  end #works

  def content
    @content
  end #works

end
