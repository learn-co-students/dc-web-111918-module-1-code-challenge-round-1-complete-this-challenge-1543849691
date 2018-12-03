class Restaurant
  attr_accessor :name, :customer, :review
  @@all = []
  def initialize(name)
    @name = name
    @customer = customer
    @review = review
    @@all << self
  end
  def self.all
    @@all
  end

  def self.find_by_name(name)
    if self.name = self
      return
  end

  def customers
    Review[:rating].select {|cust| cust.rating == self}
  end

  def reviews
    self.review.all
  end

  def longest_review
    # find content from Review for each instance of a restaurant
    # that contains the most characters (maybe using .length?)
  end
end
