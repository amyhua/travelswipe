class CreateCategoryWeights < ActiveRecord::Migration
  def change
    create_table :category_weights do |t|
      t.float :weight
      t.references :category
      t.references :city
      t.timestamps
    end
    add_index :category_weights, :category_id
    add_index :category_weights, :city_id
  end
end
