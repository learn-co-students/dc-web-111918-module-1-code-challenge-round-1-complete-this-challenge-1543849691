class Customer
  attr_accessor :first_name, :last_name, :reviews
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @reviews = []
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(restaurant, content, rating)
    @reviews << new_review
  end

  def num_reviews
    num_review = 0
    Review.all.each do |review|
      num_review += review.review
    end
    return num_review
  end

  def restaurants
    restaurant_arr = []
    Review.all.each do |review|
      if review.customer == self
        restaurant_arr << review
      end
    end
    return restaurant_arr
  end

  def self.find_by_name(name)

  end

  def self.find_all_by_first_name(name)

  end

  def self.all_names

  end
end
