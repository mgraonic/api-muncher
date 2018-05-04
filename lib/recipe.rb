class Recipe
  attr_reader :name, :uri, :image, :ingredients, :calories, :link, :source

  def initialize(name, uri, image, ingredients, calories, link, source)
    @name = name
    @uri = uri
    @image = image
    @ingredients = ingredients
    @calories = calories
    @link = link
    @source = source
    # @nutrients = nutrients
  end

  def self.from_api(recipe_hash)
    self.new(recipe_hash["label"],
      recipe_hash["uri"],
      recipe_hash["image"],
      recipe_hash["ingredientLines"],
      recipe_hash["calories"],
      recipe_hash["url"],
      recipe_hash["source"]
    )
  end

  # def self.from_api(recipe_hash)
  #   self.new(recipe_hash["recipe"]["label"],
  #     recipe_hash["recipe"]["uri"],
  #     recipe_hash["recipe"]["image"],
  #     recipe_hash["recipe"]["ingredientLines"],
  #     recipe_hash["recipe"]["calories"],
  #     recipe_hash["recipe"]["url"]
  #   )
  # end
end
