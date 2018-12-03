class Review
  attr_accessor :restaurant, :rating, :content
  attr_reader :customer
  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

  def customer
    self[:customer].select {|cust| cust.customer == self}
  end

  def restaurant
    self[:restaurant].select {|rest| rest.restaurant == self}
  end

  def rating
    self[:rating].select {|num| num.rating == self}
  end

  def content
    self[:content].select {|written_review| written_review.content == self}
  end
end
