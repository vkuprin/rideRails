# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @team = Team.all.as_json
  end
end
