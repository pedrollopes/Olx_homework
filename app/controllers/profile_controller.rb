class ProfileController < ApplicationController
  layout "profile"
  def index
    @ads = Ad.where(member_id: current_member.id)
  end
end