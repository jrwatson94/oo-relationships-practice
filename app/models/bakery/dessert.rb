class Dessert 
    attr_accessor :name, :bakery

    @@all = []
    def initialize(name, bakery)
        @name = name
        @bakery = bakery

        @@all << self
    end

    def self.all
        @@all 
    end

    def ingredients
        ingredients = []
        Recipe.all.each do |recipe|
            if recipe.dessert == self
                ingredients << recipe.ingredients
            end
        end
        ingredients.flatten.uniq
    end

    def calories
        self.ingredients.map {|ingredient| ingredient.calorie_count }.sum
    end

    








end
