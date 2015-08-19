class ProductsController < ApplicationController
  def index
    @products = Product.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end

  def edit
    @product = Product.find_by(id: params[:id])
    @current_product = Product.find_by(id: params["id"])
  end

  def update
    @product = Product.find_by(id: params[:id])
    if @product.update(product_params)
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  def new
    @product = Product.new
    @current_product = @product
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    redirect_to root_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :retail_price, :rating, :vineyard)
  end
end
