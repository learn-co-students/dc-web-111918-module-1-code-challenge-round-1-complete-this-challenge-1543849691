class Customer
attr_accessor :first_name, :last_name
@@all = []

  def self.all
      @@all
  end

  def initialize(first_name, last_name)
      @first_name = first_name
      @last_name  = last_name
      self.class.all << self
  end

  #helper method
  def full_name
      "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    Customer.all.select {|customer| customer.full_name == name}
  end

  def self.find_all_by_first_name(name)
    Customer.all.select{|customer| customer.first_name == name}
  end

  def self.all_names
    Customer.all.map{|customer| customer.full_name}
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  #helper method
  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    self.reviews.map {|review| review.restaurant}.uniq
  end

end
