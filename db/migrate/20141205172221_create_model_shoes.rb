class CreateModelShoes < ActiveRecord::Migration
  def change
    create_table :model_shoes do |t|
      t.integer :shoe_id

      t.timestamps
    end
  end
end
