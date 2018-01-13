class HomeController < ApplicationController
  def index
    @ads = Ad.limit(6).order(created_at: :desc)
  end
end
