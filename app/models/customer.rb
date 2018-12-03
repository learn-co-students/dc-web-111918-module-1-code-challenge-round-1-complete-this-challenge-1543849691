# - `Customer.all`
#   - should return **all** of the customer instances
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names

class Customer

  @@all = []
  attr_accessor :first_name, :last_name, :review

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
      #   - given a string of a **full name**, returns the **first customer** whose full name matches
    self.all.select { |cust| name == cust.first_name + " " + cust.last_name }
  end

  def self.find_all_by_first_name(name)
    #   - given a string of a first name, returns an **array** containing all customers with that first name
    self.all.select {|cust| name == cust.first_name }
  end

  def self.all_names
    #   - should return an **array** of all of the customer full names
    self.all.map { |cust| cust.first_name + " " + cust.last_name }
  end
####aggregate
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
    #- given a **restaurant object**, some review content
    #(as a string), and a star rating (as an integer),
    #creates a new review and associates it with that
    #customer and restaurant.
  end

  def num_reviews
        #- Returns the total number of reviews that a customer has authored
    Review.all.select {|rev| self == rev.customer}.length
  end

  def restaurants
    Review.all.select { |rev| rev.restaurant if rev.customer == self}.uniq

  end

end
