require 'pry'
require_relative "./lib/waiter"
require_relative "./lib/meal"
require_relative "./lib/customer"

ann = Waiter.new("ann", 4)
bob = Customer.new("bob", 50)
dave = Customer.new("dave", 25)
charlie = Customer.new("charlie", 29)

meal3 = Meal.new(ann, bob, 100, 0)
meal4 = Meal.new(ann, dave, 50, 5)
meal5 = Meal.new(ann, charlie, 25, 6)

ann.best_tipper