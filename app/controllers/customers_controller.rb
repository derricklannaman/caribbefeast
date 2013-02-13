class CustomersController <ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.find(params[:id])
    if @customer.save
      redirect_to customer_path @customer, notice: "New customer created"
    else
      flash.now[:notice] = "Customer not added"
      render 'new'
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update_attributes(params[:id])
      redirect_to customers_path
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path
  end

end