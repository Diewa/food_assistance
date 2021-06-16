module MealHelper

  def add_product_helper
    @meal.products << Product.new
  end
end