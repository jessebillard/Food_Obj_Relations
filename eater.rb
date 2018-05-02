class Patron

    attr_accessor :name, :hunger

    def initialize(name)
        @name = name
        @hunger = 8
    end 

    
    def meals_eaten
        Meal.all.select do |meal|
            meal.patron == self
        end.collect { |meal_instance| meal_instance.name}
    end 
    
end 
