class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    customers = []
    Review.all.select do |review|
      if review.restaurant == self
        customers << review.customer
      end
    end
    customers
  end

  def reviews
    reviews = []
    Review.all.select do |review|
      if review.restaurant == self
        reviews += ["name = #{review.customer.first_name} " "#{review.customer.last_name}", "rating = #{review.rating}", "content = #{review.content}"]
      end
    end
    reviews
  end

  def average_star_rating
    rating = []
    Review.all.select do |review|
      if review.restaurant == self
        rating << review.rating
      end
    end
    ave_rating = rating.inject(:+) / rating.size
    ave_rating
  end

  def longest_review
    Review.all.find do |review|
      # if review.restaurant == self && review.content.length
      # end
    end
  end

end
