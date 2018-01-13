class AdsController < ApplicationController

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(params_ad)
    @ad.member = current_member

    if @ad.save
      redirect_to profile_index_path, notice: "Anúncio cadastrado com sucesso!"
    else
      render :new
    end
end

  private

  def set_ad
    @ad = Ad.find(params[:id])    
  end

  def params_ad
    params.require(:ad).permit(:id, :title, :price, :description, :image)
  end

end