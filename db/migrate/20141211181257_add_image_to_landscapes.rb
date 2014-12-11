class AddImageToLandscapes < ActiveRecord::Migration
  def change
    add_column :landscapes, :image, :string, null: false
  end
end
