class Review
  attr_accessor :customer, :restaurant, :rating, :content

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    customer.reviews << self
    @restaurant = restaurant
    restaurant.reviews << self
    @rating = rating
    @content = content
    @@all << self

  end

  def self.all
    @@all
  end

  def customer
    @customer
  end

  def reataurant
    @restaurant
  end

  def rating
    @rating
  end

  def content
    @content
  end
end
