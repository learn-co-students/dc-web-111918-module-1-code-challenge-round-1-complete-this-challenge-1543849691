class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end #works

  def self.find_by_name(name)
    @@all.find {|customer| customer.full_name == name}
  end #works

  def self.find_all_by_first_name(name)
    @@all.find_all {|customer| customer.first_name == name}
  end #works

  def self.all_names
    @@all.map {|customer| customer.full_name}
  end #works

  def add_review(restaurant_obj, rating, content)
    Review.new(restaurant_obj, self, rating, content)
  end #works

  def num_reviews
    counter = 0
    Review.all.each do |review|
      if review.customer == self
        counter +=1
      end
    end #each
    counter
  end #works

  def restaurants
    arr = Review.all.select {|review| review.customer == self}
    restaurant_arr = arr.map {|review| review.restaurant}
    restaurant_arr.uniq
  end #works

end #class end
