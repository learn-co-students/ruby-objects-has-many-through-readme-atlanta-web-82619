class Customer

  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age

    @@all << self # tracks every initialized customers
  end

  def self.all
    @@all # returns all initialized customers
  end

  def new_meal(waiter, total, tip = 0)
    Meal.new(waiter, self, total, tip)
  end

  def meals # iterates through all meals and returns them
    Meal.all.select do | meal | # use .select enumerable
      meal.customer == self
    end
  end

  def waiters
    meals.map do |meal| # use .map enumerable
      meal.waiter
    end
  end

end
