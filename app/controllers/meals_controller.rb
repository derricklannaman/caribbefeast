class MealsController <ApplicationController

  def index
    # @destination = Destination.all
    # @meals = @destination.meals
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(params[:meal])
    if @meal.save
      flash[:notice] = "New meal created"
      redirect_to meal_path @meal
    else
      flash.now[:notice] = "Meal not added"
      render 'new'
    end
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    @meal.update_attributes(params[:meal])
      redirect_to meals_path
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_path
  end

end