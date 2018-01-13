class AddImageToAds < ActiveRecord::Migration[5.0]
  def change
    add_column :ads, :image, :string
  end
end
