class MealsController <ApplicationController

  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.find(params[:id])
    if @meal.save
      redirect_to meal_path @meal, notice: "New meal created"
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
    @meal.update_attributes(params[:id])
      redirect_to meals_path
  end

  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_path
  end

end