class LiteratureController < ApplicationController
  def files
    @data = LiteratureCategory.joins(:literatures).find(params[:file_category])
  end

  def testimonials
    @testimonials = Testimonial.all
  end
end
