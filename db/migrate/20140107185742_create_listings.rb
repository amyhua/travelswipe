class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.references :user
      t.boolean :is_voted, default: false
      t.boolean :is_liked
      t.references :city
      t.references :category
      t.timestamps
    end
    add_index :listings, :user_id
    add_index :listings, :city_id
    add_index :listings, :category_id
  end
end
