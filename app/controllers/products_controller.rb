class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def edit
    @product = Product.new
    @current_product = Product.find_by(id: params["id"])
  end

  def create
    this is a tab test
  end

  private

  def product_params
    params.require(:product).permit(:name)
  end
end
