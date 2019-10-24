class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def product
    @product = Product.includes(:product_features).where(:id => params[:id]).first
  end
end
