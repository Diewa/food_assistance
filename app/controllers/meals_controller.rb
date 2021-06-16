class MealsController < ApplicationController

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to '/', notice: "created"
    else
      render :new
    end
  end

  def add_product
    @meal.save
  end

  private

  def meal_params
    params.require(:meal).permit(:name, products_attributes: Product.attribute_names.map(&:to_sym).push(:_destroy))
  end
end