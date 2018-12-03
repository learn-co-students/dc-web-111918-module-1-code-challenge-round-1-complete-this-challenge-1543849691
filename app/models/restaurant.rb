class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end #works

  def self.find_by_name(name)
    @@all.find {|restaurant| restaurant.name == name}
  end #works

  def customers
    customer_arr = self.reviews.map {|ele| ele.customer}
    customer_arr.uniq
  end #works

  def reviews
    Review.all.select {|ele| ele.restaurant == self}
  end #works

  def average_star_rating
    avg = self.reviews.map {|review| review.rating}
    float_avg = avg.collect {|ele| ele.to_f}
    float_avg.reduce(:+)/float_avg.length
  end #works

  def longest_review
    self.reviews.sort_by {|ele| ele.content.length}[-1]
  end #works

end #class end
