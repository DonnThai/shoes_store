class AddCoverToShoes < ActiveRecord::Migration
  def change
  	add_attachment :shoes, :cover 
  end
end
