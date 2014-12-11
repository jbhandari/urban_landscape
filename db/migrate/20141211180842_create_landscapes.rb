class CreateLandscapes < ActiveRecord::Migration
  def change
    create_table :landscapes do |t|
      t.string :caption, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
