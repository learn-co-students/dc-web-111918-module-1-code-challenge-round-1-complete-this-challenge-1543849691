class Review

    # - `Review.all`
    #   - returns all of the reviews
    # - `Review#customer`
    #   - returns the customer object for that given review
    #   - Once a review is created, I should not be able to change the author
    # - `Review#restaurant`
    #   - returns the restaurant object for that given review
    #   - Once a review is created, I should not be able to change the restaurant
    # - `Review#rating`
    #   - returns the star rating for a restaurant. This should be an integer from 1-5
    # - `Review#content`
    #   - returns the review content, as a string, for a particular review
  @@all = []

  attr_accessor :name, :rating, :content
  attr_reader :customer, :restaurant
  def initialize (customer_obj, restaurant_obj, rating, content)
    @customer = customer_obj
    @restaurant = restaurant_obj
    @rating = rating
    @content = content

    self.class.all << self
  end

  def self.all
    @@all
  end

  def customer_m
    self.customer
    # - `Review#customer`
    #   - returns the customer object for that given review
    #   - Once a review is created, I should not be able to change the author

  end

  def restaurant_m
    self.restaurant
    # - `Review#restaurant`
    #   - returns the restaurant object for that given review
    #   - Once a review is created, I should not be able to change the restaurant
  end

  def rating_m
    self.rating
    # - `Review#rating`
    #   - returns the star rating for a restaurant. This should be an integer from 1-5
  end

  def content_m
    self.content
    # - `Review#content`
    #   - returns the review content, as a string, for a particular review
  end

end
