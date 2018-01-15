class AdDetailController < ApplicationController
  layout 'site'
  def show
    @ad = Ad.find(params[:id])
  end
end