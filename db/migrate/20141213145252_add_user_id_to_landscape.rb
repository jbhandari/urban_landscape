class AddUserIdToLandscape < ActiveRecord::Migration
  def change
    add_column :landscapes, :user_id, :integer, null: false
  end
end
