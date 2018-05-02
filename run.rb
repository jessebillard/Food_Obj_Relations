require 'pry'
require_relative 'chef.rb'
require_relative 'eater.rb'
require_relative 'meals.rb'

gordon_ramsey = Chef.new("gordon ramsey")
big_mama = Chef.new("big mama")
rach_ray = Chef.new("rachel ray")
iron_chef = Chef.new("iron chef")

food_critic = Patron.new("food critic")
jesse = Patron.new("jesse")
kobiyashi = Patron.new("kobiyashi")

ramen = Meal.new("ramen", iron_chef, kobiyashi)
chicken_parm = Meal.new("chicken parm", rach_ray, jesse)
steak_n_shrimp = Meal.new("steak n shrimp", big_mama, jesse)
braised_lamb = Meal.new("braised lamb", gordon_ramsey, food_critic)
idiot_sandwich = Meal.new("idiot sandwich", gordon_ramsey, food_critic)
pb_j = Meal.new("pb & j", gordon_ramsey, jesse)



binding.pry
1