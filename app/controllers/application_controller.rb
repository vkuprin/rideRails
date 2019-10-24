class ApplicationController < ActionController::Base

  before_action :get_link_data
  layout "application"


  private

  def get_link_data
    @product_links = Product.select('id, name').all.as_json
    @literature_links = LiteratureCategory.select('id, name').all.as_json
  end
end
