class Restaurant
  attr_accessor :name

@@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    entire = Restaurant.all.find {|rest| rest.name == name}
    entire.name
  end

  def customers
    people = Review.all.select {|r| r.restaurant_obj == self}
    people.map {|x| x.customer_obj.full_name}
  end

  def reviews
    reviews = []
    review_content = Review.all.select {|o| o.restaurant_obj == self}
    reviews << review_content.map {|x| x.content}
      reviews
  end

  def average_star_rating
    #We want to factor in the ratings that are above 5 and below 1 with our #rating method
    # If a rating is over 5 we want to make it 5, if it is below 1 then we want it to equal 1
    # This is important when finding the average
    hash = Hash.new(0)
    Review.all.each {|r| hash[r.restaurant_obj] += r.star_rating.rating}
    # binding.pry
  end

  def longest_review
    hash = Hash.new(0)
    Review.all.each {|r| hash[r.restaurant_obj] = r.content.length}
    binding.pry
    #find the string length
  end

end
