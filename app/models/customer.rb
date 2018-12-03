class Customer
  attr_accessor :first_name, :last_name, :restaurant, :review
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @restaurant = restaurant
    @review = review
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    if self.first_name = self && self.last_name == self
      return
    end
  end

  def self.all_names
    first_name_array = []
    last_name_array = []
    full_name_array = []
    self[:first_name].all.each {|first| first.first_name == self}
      first_name_array << self
    self[:last_name].all.each {|last| last.last_name == self}
      last_name_array << self
    first_name_array.zip(last_name_array) << full_name_array
    return full_name_array
  end


  def self.find_all_by_first_name(first_name)
    first_name_array = []
    self[:first_name].all.each {|first| first.first_name == self}
      first_name_array << self
    return first_name_array
  end


  def self.add_review(restaurant_obj, content, rating)
    Review.new(restaurant_obj, content, rating, self)
  end

  def self.num_reviews
    Review[:rating].select {|rating| rating.customer == self}
  end

  def self.restaurants
    Review[:restaurant].select {|rest| rest.restaurant == self}
  end

end
