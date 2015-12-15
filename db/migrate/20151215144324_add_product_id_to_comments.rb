class AddProductIdToComments < ActiveRecord::Migration
  def up
  	add_column :comments, :product_id, :integer
  	add_index :comments, :product_id
  end
  def down
  	remove_index :comments, :product_id
  	remove_column :comments, :product_id
  end
end
