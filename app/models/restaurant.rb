# #### Build out the following methods on the `Restaurant` class
#
# - `Restaurant.all`
#   - returns an array of all restaurants
# - `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the
#   first restaurant that matches

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
  #   - given a string of restaurant name, returns the
  #   first restaurant that matches (.find?)
  name = "Bukom Cafe"
  Restaurant.all.find {|rest| rest.name == name}
  end

  #### Restaurant
  #
  # - `Restaurant#customers`
  #   - Returns a **unique** list of all customers who have reviewed a particular restaurant.
  # - `Restaurant#reviews`
  #   - returns an array of all reviews for that restaurant
  # - `Restaurant#average_star_rating`
  #   - returns the average star rating for a restaurant based on its reviews
  # - `Restaurant#longest_review`
  #   - returns the longest review content for a given restaurant

  def customers
    arr = []
    Review.all.each {|ele| arr << "#{ele.cust_obj.first_name} #{ele.cust_obj.last_name}"}
    arr.uniq
  end

  def reviews(rest_name)
    arr = []
    Review.all.each select {|ele| ele.rest_obj.name == rest_name}
  end

  def longest_review
    arr = []
    Review.all.each {|ele| }

  end


      #####    END CLASS #######
end
