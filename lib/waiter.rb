class Waiter
    attr_reader :name , :yop
    @@all = []
    def initialize(name, yop)
        @name = name
        @yop = yop
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select {|meal| meal.waiter == self}
    end

    def best_tipper
       biggest_tip = 0
       tipper = nil
       Meal.all.each do |meal|
        if meal.tip > biggest_tip
            biggest_tip = meal.tip
            tipper = meal.customer
        end
       end
       tipper
    end

end