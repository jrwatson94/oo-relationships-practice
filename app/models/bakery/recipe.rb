class Recipe
    attr_accessor :name, :dessert, :ingredients

    @@all = []
    def initialize(name,dessert,ingredients)
        @name = name
        @dessert = dessert
        @ingredients = ingredients

        @@all << self
    end

    def self.all
        @@all
    end
    

    def bakery
        @dessert.bakery
    end



end
