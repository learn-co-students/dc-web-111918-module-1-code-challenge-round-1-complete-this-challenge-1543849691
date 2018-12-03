class Restaurant
  attr_accessor :name, :reviews
  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    customer_arr = []
    Review.all.each do |review|
      if review.restaurant == self
        customer_arr << review
      end
    end
    return customer_arr
  end

  def reviews
    @reviews
  end

  def avarage_star_rating
    avarage_arr = self.reviews.map do |review|
      review.rating
      # binding.pry
    end
    rating_sum = 0
    avarage_arr.each do |avarage_num|
      rating_sum += avarage_num
    end
    return rating_sum
  end

  def longest_review
    # Restaurant.all.each do |restaurant|
    #   binding.pry
    # end
  end

  def self.find_by_name(name)

  end
end
