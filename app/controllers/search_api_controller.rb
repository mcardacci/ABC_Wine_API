class SearchApiController < ApplicationController
  
  def search_page
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
      render json: @products
    else
      flash[:notice] = "There are no products that matched your search."
    end   
  end
  
  def update
    @current_product = Product.find_by(id: params[:id])
    @current_product.update(params)
    render json: @current_product
  end
end