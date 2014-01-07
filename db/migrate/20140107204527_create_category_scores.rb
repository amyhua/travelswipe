class CreateCategoryScores < ActiveRecord::Migration
  def change
    create_table :category_scores do |t|
      t.float :score
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
    add_index :category_scores, :user_id
    add_index :category_scores, :category_id
  end
end
