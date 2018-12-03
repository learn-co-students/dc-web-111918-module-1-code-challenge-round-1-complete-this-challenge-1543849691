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

  def self.find_by_name(name_string)
    # given a string of restaurant name, returns the first restaurant that matches
    self.all.find {|restaurant| restaurant.name == name_string }
  end

  def customers
    # Returns a **unique** list of all customers who have reviewed a particular restaurant.
    reviews = Review.all.select {|review| review.restaurant == self }
    reviews.collect {|review| review.customer }.uniq
  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select {|review| review.restaurant == self }
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
    reviews = Review.all.select {|review| review.restaurant == self }
    ratings_array = reviews.collect {|review| review.rating.to_f }
    (ratings_array.inject(0){|sum,x| sum + x }/ratings_array.count).round(1)
  end

  def longest_review
    # returns the longest review content for a given restaurant
    reviews = Review.all.select {|review| review.restaurant == self }
    content_array = reviews.collect {|review| review.content }
    content_array.sort[0]
  end
end
