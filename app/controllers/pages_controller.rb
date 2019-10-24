class PagesController < ApplicationController
  def index
    @faq_item_list = Faq.all.as_json
  end
end
