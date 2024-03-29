class ErrorsController < ApplicationController

  def not_found
    render status: 404, :formats => [:html]
  end

  def unacceptable
    render status: 422, :formats => [:html]
  end

  def internal_server_error
    render status: 500, :formats => [:html]
  end

end