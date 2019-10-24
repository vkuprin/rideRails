class ApplicationsController < ApplicationController
  def application
    @application = Product.includes(:product_features).where(:id => 1).first
  end
end
