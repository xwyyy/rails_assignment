class MealsController < ApplicationController

  def index
    letter = params[:letter] || "a"
    @meals = Meal.find_by_letter(letter)
  end

  def show
    @meal = Meal.find_by_id(params[:id])
  end

end