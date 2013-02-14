class DestinationsController <ApplicationController

  def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(params[:destination])
    if @destination.save
      flash[:notice] = "New Destination created"
      redirect_to destination_path @destination
    else
      flash.now[:notice] = "Destination not added"
      render 'new'
    end
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update_attributes(params[:destination])
      redirect_to destinations_path
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    redirect_to destinations_path
  end

end