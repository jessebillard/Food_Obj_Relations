class Chef

    attr_accessor :name

    @@all_chefs = []

    def initialize(name)
        @name = name
        @@all_chefs << self
    end 

    def meals_made
        Meal.all.select do |meal|
            meal.chef == self
        end.collect { |meal_instance| meal_instance.name}
    end 

    def patrons_served
        Meal.all.select do |meal|
            meal.chef == self
        end.collect { |meal_instance| meal_instance.patron.name}.uniq
    end 



    #class methods
    def self.all
        @@all_chefs
    end 

    def self.count
        @@all_chefs.count
    end 

end 
