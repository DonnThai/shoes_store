class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name
      t.integer :category_id
      t.integer :company_id
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
