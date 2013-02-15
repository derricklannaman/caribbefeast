class MealsController < ApplicationController

  def index
    @destination = Destination.find(params[:destination_id])
    @meals = @destination.meals
  end

  def new
    @destination = Destination.find(params[:destination_id])
    @meal = @destination.meals.new
  end

  def create
    @destination = Destination.find(params[:destination_id])
    @meal = @destination.meals.new(params[:meal])
    if @meal.save
      flash[:notice] = "New meal created"
      redirect_to destination_meal_path(@destination, @meal)
    else
      flash.now[:notice] = "Meal not added"
      render 'new'
    end
  end

  def show
    @destination = Destination.find(params[:destination_id])
    @meal = @destination.meals.find(params[:id])
  end

  def edit
    @destination = Destination.find(params[:destination_id])
    @meal = Meal.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:destination_id])
    @meal = @destination.meals.find(params[:id])
    @meal.update_attributes(params[:meal])
      redirect_to destination_meal_path(@destination, @meal)
  end

  def destroy
    @destination = Destination.find(params[:destination_id])
    @meal = @destination.meals.find(params[:id])
    @meal.destroy
      redirect_to destination_path(@destination)
  end

end