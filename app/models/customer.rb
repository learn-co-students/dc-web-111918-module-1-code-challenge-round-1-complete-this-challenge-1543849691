class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def new_review(rating, restaurant, content)
    Review.new(self, rating, restaurant, content)
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.name == name
    end
  end

  def self.find_all_by_first_name(name)
    name_array = []
    self.all.select do |customer|
      if customer.first_name == name
        name_array << customer
      end
    end
    name_array
  end

######### REFACTOR ###########
  def self.all_names
    full_names = []
    self.all.collect do |customer|
      if full_names.include?(customer.first_name)
        full_names
      else
        full_name = customer.first_name + " " + customer.last_name
        full_names << full_name
      end
    end
    full_names
  end

  def add_review(rating, restaurant, content)
    Review.all.push(self.new_review(rating, restaurant, content)) unless Review.all.include?(self.new_review(rating, restaurant, content))
  end

  def num_reviews
    reviews = []
    Review.all.select do |review|
      if review.customer == self
        reviews << review
      end
    end
    reviews.count
  end

  def restaurants
    reviewed_rest = []
    Review.all.select do |review|
      if review.customer == self
        reviewed_rest << review.restaurant
      end
    end
    reviewed_rest
  end

end
