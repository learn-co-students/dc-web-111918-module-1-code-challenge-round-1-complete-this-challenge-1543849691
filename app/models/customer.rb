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

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(fullname_string)
    # given a string of a **full name**, returns the **first customer**
    # whose full name matches
    fullnames = self.all_names
    specific_customer = fullnames.find {|fullname| fullname == fullname_string}
    self.all.find {|customer| customer.first_name + " " + customer.last_name == specific_customer}
  end

  def self.find_all_by_first_name(name_string)
    # given a string of a first name, returns an **array** containing
     # all customers with that first name
    self.all.select {|customer| customer.first_name == name_string}
  end

  def self.all_names
    # should return an **array** of all of the customer full names
    self.all.collect {|customer| customer.first_name + " " + customer.last_name}
  end

  def add_review(restaurant_obj, content, rating)
   # given a **restaurant object**, some review content (as a string), and a
   # star rating (as an integer), creates a new review and associates it with
   # that customer and restaurant.
   Review.new(restaurant_obj, self, content, rating)
  end

  def num_reviews
   # Returns the total number of reviews that a customer has authored
   Review.all.select {|review| review.customer == self}.count
  end

  def restaurants
    # Returns a **unique** array of all restaurants a customer has reviewed
    reviews = Review.all.select {|review| review.customer == self}
    reviews.collect {|review| review.restaurant}.uniq
  end
end
