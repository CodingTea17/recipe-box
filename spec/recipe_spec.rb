require "spec_helper"

RSpec.describe(Recipe) do
  # it "will list ingredients of a recipe" do
  #   test_recipe = Recipe.create(:name => "Chocolate Chip Cookies", :rating => 5)
  #   test_ingredient = Ingredient.create({:name => "flour"})
  #   # Recipe.new({:name => "Meat Loaf", :rating => 5, :ingredient_ids => [test_ingredient.id]})
  #   # test_recipe.ingredients.new(name => "Suga")
  #   test_recipe.lists.create(:ingredient => test_ingredient, :quantity => 2)
  #   expect(List.where(recipe_id: test_recipe.id , ingredient_id: test_ingredient.id).first.quantity).to eq test_recipe.lists.first.quantity
  # end

  it { should have_many :lists }
  it { should have_many :steps }
  it { should have_and_belong_to_many :tags }
  it do
    should have_many :ingredients
  end
end
