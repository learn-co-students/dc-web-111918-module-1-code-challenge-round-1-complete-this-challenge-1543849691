class Customer
  attr_accessor :first_name, :last_name, :customer_obj
@@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    entire = Customer.all.find do |person|
      person.full_name == name
      end
     entire.full_name
  end

  def self.all_names
    array = []
    entire = Customer.all.select do |person|
      array << person.full_name
      end
      array
  end

  def self.find_all_by_first_name(name)
    first_name_array = []
    final_array = []
    Customer.all.select do |cust|
      if cust.first_name == name
        first_name_array << cust
    end
  end
    final_array << first_name_array.map {|cu| cu.full_name}
    final_array
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant_obj,content, star_rating)
    Review.new(restaurant_obj,self,star_rating, content)
  end

  def num_reviews
    hash = Hash.new(0)
    Review.all.each {|r| hash[r.customer_obj] += 1}
    hash.find do |k,v|
      if k.full_name == self.full_name
      return v

  # elsif k.full_name != self.full_name
  #      return 0
    end
    end
  end

  def restaurants
    unique = Review.all.each do |t|
      if t.customer_obj.full_name == self.full_name
        return t.restaurant_obj.name
      end
    #   reviewed_restaurants_array << t
    # end
    # reviewed_restaurants_array
    # binding.pry
  end
end
end
