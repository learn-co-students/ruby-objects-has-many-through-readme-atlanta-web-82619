require 'pry'

class Waiter
    attr_accessor :name, :years_xp
    @@all = []

    def initialize(name, years_xp)
        @name = name
        @years_xp = years_xp
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip = 0)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select { |m| m.waiter == self }
    end

    def best_tipper
        big_tip = meals.max do |meal1, meal2|
            meal = meal1.tip <=> meal2.tip
        end
        big_tip.customer
    end
end