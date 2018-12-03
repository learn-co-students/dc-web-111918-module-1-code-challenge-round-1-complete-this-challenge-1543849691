class Review
attr_accessor :star_rating
attr_reader :content, :customer_obj, :restaurant_obj
@@all = []
  def initialize(restaurant_obj, customer_obj,star_rating,content)
    @restaurant_obj = restaurant_obj
    @customer_obj = customer_obj
    @star_rating = star_rating
    @content = content
    self.class.all << self
  end

def self.all
  @@all
end

def customer
  review = Review.all.find {|info| info.content == self.content}
  review.customer_obj
end

def restaurant
  restaurant = Review.all.find {|info| info.content == self.content}
  restaurant.restaurant_obj
end

def rating
  rating = Review.all.find {|info| info.content == self.content}
  if rating.star_rating > 5
    return 5
  elsif rating.star_rating < 1
    return 1
  end
  rating.star_rating
end

def content
  @content
end
end
