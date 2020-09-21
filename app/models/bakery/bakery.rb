class Bakery
    attr_accessor :name

    @@all = []
    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts 
        Dessert.all.select {|dessert| dessert.bakery == self}    
    end

    def ingredients
        ingredients = []
        Recipe.all.each do |recipe|
            if recipe.bakery == self
                ingredients << recipe.ingredients
            end
        end
        ingredients.flatten.uniq
    end

    def average_calories
        total = Dessert.all.map {|dessert| dessert.calories}
        total.sum / total.size
    end

    def shopping_list
        self.ingredients.map {|ingredient| ingredient.name}.join(", ")
    end

end
