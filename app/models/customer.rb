# #### Build the following methods on the `Customer` class
#
# - `Customer.all`
#   - should return **all** of the customer instances
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names

#### Customer

# - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star
# rating (as an integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed

class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(name_full)
#   - given a string of a **full name**, returns the **first customer** whose full name matches
  # TEST VAR => name_full = "Benjamin Addai"
  #Need to return customer object
  Customer.all.find {|person| "#{person.first_name} " + "#{person.last_name}" == name_full}

  end

  def self.find_all_by_first_name(name_first)
  #   - given a string of a first name, returns an **array** containing all customers with that first name

  #returns all customers
    arr = Customer.all
    # TEST VAR => name_first = "Benjamin"

    #selects customers with first name of "name_first"
    arr.select {|person| person.first_name == name_first}
  end

  def self.all_names
#   - should return an **ARRAY** of all of the customer full names
    Customer.all.map {|person| "#{person.first_name } #{person.last_name}"}
  end

  def add_review(rest_obj, content, rating)

    self.class.all << Review.new(rest_obj, content, rating)
# - `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star
# rating (as an integer), creates a new review and associates it with
# that customer and restaurant.


  end

  def num_reviews(cust_name)
    # - `Customer#num_reviews`
    #   - Returns the total number of reviews that a customer has authored
    hash = Hash.new(0)
    new_hash = Review.all.each do|ele| hash["#{ele.cust_obj.first_name} #{ele.cust_obj.last_name}"]+=1
    end
      new_hash[cust_name]
end

    def restuarants(full_name)
      # - `Customer#restaurants`
      #   - Returns a **unique** array of all restaurants a customer has reviewed
      new_arr = []
      Review.all.each do |ele|
        if "#{ele.cust_obj.first_name} #{ele.cust_obj.last_name}" == full_name
          new_arr << ele.rest_obj.name
      end
      new_arr.uniq
    end


end
