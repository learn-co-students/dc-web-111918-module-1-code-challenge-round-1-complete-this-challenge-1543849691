class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.all_names
    self.all.select do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    Review.new(self,restaurant,content,rating)
  end

  def num_reviews
    customer_review = Review.all.select do |review|
      review.customer == self
    end.count
  end

  def restaurants
    customer_review=Review.all.select do |review|
      review.customer == self
    end
    customer_review.collect do |reviews|
      reviews.restaurant
    end.uniq
  end

  def self.find_by_name(name_string)
    self.all.select do |customer|
      customer.full_name == name_string
    end
  end

  def self.find_all_by_first_name(name_string)
    self.all.select do |customer|
      customer.first_name == name_string
    end
  end

end
