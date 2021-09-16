class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end


  private

  def customer_params
    params.require(:customer).permit(:name, :email, :image, :learning, :hobby, :a_word)
  end
end
