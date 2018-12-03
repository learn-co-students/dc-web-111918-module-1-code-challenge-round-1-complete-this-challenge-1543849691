class Review
  attr_accessor :name
  attr_reader :customer, :restaurant

  @@all= []

  def initialize(name, customer, restaurant)
    @name = name
    @rating= (1..5)
    @customer= customer
    @restaurant= restaurant
    @@self.class.all<< self
  end

  def self.all
  @@self.class.all
  end

  def rating(rating.to_i)
    @rating= rating.to_i
  end

  def content
    self.all.select do |content|
      review.content == self
    end
  end



end
