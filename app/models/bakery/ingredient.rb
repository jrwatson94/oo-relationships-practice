class Ingredient
    attr_accessor :name, :calorie_count

    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count

        @@all << self
    end

    def self.all
        @@all 
    end

    def dessert 
        desserts = []
        Recipe.all.each do |recipe|
            if recipe.ingredients.include?(self)
                desserts << recipe.dessert
            end
        end
        desserts
    end

    def bakeries 
        bakeries = []
        Recipe.all.each do |recipe|
            if recipe.ingredients.include?(self)
                bakeries << recipe.bakery
            end
        end
        bakeries.uniq
    end

    def self.find_all_by_name(ingredient_string)
        Ingredient.all.find_all do |ingredient|
            ingredient.name.downcase.split(" ").include?(ingredient_string)  
        end

    end
end
