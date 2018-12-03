# #### Build out the following methods on the `Review` class
#
# - `Review.all`
#   - returns all of the reviews
# - `Review#customer`
#   - returns the customer object for that given review
#   - Once a review is created, I should not be able to change the author
# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, I should not be able to change the restaurant
# - `Review#rating`
#   - returns the star rating for a restaurant. This should be an
#   integer from 1-5
# - `Review#content`
#   - returns the review content, as a string, for a particular review


class Review

@@all = []

#does resaurant need read only?
attr_reader :rest_obj, :cust_obj
attr_accessor :content, :rating


  def initialize(rest_obj, cust_obj, content, rating)
    @cust_obj = cust_obj
    @rest_obj =rest_obj
    @content = content
    @rating = rating
    self.class.all << self
  end

  def self.all

    @@all

  end

  def customer(rev)
    # EXAMPLE Review
    # rev = Review.new(r1, ben, "This place is amazing!", 5)
#   - returns the customer object for that given review
#   - Once a review is created, I should not be able to change the author
    rev.cust_obj

  binding.pry
  end

  def restaurant(rev)
    # EXAMPLE Review
    # rev = Review.new(r1, ben, "This place is amazing!", 5)
#   - returns the restaurant object for that given review
#   - Once a review is created, I should not be able to change the restaurant
  rev.rest_obj

  end

  def rating(rev)
    #Example Restaurant
# rest = Restaurant.new("Bukom Cafe")
rev = Review.new(r1, ben, "This place is amazing!", 5)
#   - returns the star rating for a restaurant. This should be an
#   integer from 1-5
rev.each

#finds rating of a given restaurant?
  rev.rating

  end

  def content
#   - returns the review content, as a string, for a PARTICULAR review
  rev.content
  end
        ######  END CLASS   #########
end
