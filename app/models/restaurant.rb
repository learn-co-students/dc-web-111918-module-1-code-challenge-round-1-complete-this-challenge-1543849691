class Restaurant

  # - `Restaurant.all`
  #   - returns an array of all restaurants
  # - `Restaurant.find_by_name(name)`
  #   - given a string of restaurant name, returns the first restaurant that matches

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(nam)
    #   - given a string of restaurant name, returns the first restaurant that matches
    self.all.find {|rest| nam == rest.name }
  end

  def customers
    # Returns a **unique** list of all customers who have reviewed a restaurant.
    Review.all.select { |rev| rev.customer if rev.restaurant == self }.uniq
  end

  def reviews
    #  - returns an array of all reviews for that restaurant
    Review.all.select {|rev| self == rev.restaurant}
  end

  def average_star_rating
    count, total = 0, 0
    Review.all.each do |rev|
        if self == rev.restaurant
          total += rev.rating
          count += 1
        end
    end
    total / count
    # - returns the average star rating for a restaurant based
    # on its reviews
  end

  def longest_review
    rev_hash = {}
    Review.all.map do |rev|

    #string.length
    #- returns the longest review content for a given restaurant
  end

end
