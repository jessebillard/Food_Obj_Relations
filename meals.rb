class Meal

    attr_accessor :name, :chef, :patron

    @@all = []

    def initialize(name, chef, patron)
        @name = name
        @chef = chef
        @patron = patron
        @@all << self
    end 

    def self.all
        @@all
    end 

    


end 