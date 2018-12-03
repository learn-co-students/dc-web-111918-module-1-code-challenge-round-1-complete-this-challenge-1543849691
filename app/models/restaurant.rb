class Restaurant

  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
    @@all
end

def self.find_by_name(name_string)
  self.all.select do |restaurant|
    restaurant.name == name_string
  end
end

def customers
  self.reviews.collect do |review|
    review.customer
  end.uniq
end

def reviews
  Review.all.select do |review|
    review.restaurant == self
  end
end

def average_star_rating
  review_arr = self.reviews.collect do |review|
    review.rating
  end
  (review_arr.inject(0.0,:+))/review_arr.length
end

def longest_review
  review_arr = self.reviews.collect do |review|
    review.content
  end
  review_arr.sort_by{|cont| cont.length}[-1]
end


end
