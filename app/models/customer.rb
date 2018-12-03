class Customer
  attr_accessor :first_name, :last_name

@@all= []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@self.class.all << self
  end

  def self.all
    @@self.class.all
  end

  def full_name
    "#{first_name} #{last_name}"
  end


  def find_by_name(full_name)
    self.all.find{|cust|cust.full_name == full_name}
  end


  def find_all_by_first_name(first_name)
    self.all.find{|cust|cust.first_name == first_name}
  end

  def all_names
      Customer.all.select do |customer|
      customer.all.names == full_name
    end
  end

  def add_review (@restaurant, review_content, rating)
    self.all.select do {|review| review.name include? (restaurant, review_content.to_s, rating.to_i)}
      Review.new(restaurant, review_content, rating)

  #code is completely wrong but basically restuarant object is @restuarant and given review, and rating
  # will then set a variable to Review.new. to associate to a customer and restaurant, I'll have the review iterate through customer and resturant until they match.
  # end

  def num_reviews
    self.review.length
  end

  def restaurants
    arr= []
    self.all.select do |restaurant|
      restaurant.all.names == restaurant
      arr << restaurant
    end
end
