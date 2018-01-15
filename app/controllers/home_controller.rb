class HomeController < ApplicationController
  layout "site"
  def index
    @ads = Ad.limit(6).order(created_at: :desc)
    @carousel = Ad.limit(3).order("RANDOM()")
  end

  def search
    @ads = Ad.where("title LIKE ?", "%#{params[:q]}%")
  end
end