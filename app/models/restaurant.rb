class Restaurant
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.find_by_name(name)
    Restaurant.all.select{|restaurant| restaurant.name == name}.first
  end

  def customers
    Customer.all.select{|customer| customer.restaurants.include?(self)}.uniq
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def average_star_rating
    arr = self.reviews.map{|review| review.rating}
    arr.inject(0){|sum, i| sum + i} / arr.length
  end

  def longest_review
    arr = self.reviews.map{|review| review.content}
    arr.max_by(&:length)
  end

end
