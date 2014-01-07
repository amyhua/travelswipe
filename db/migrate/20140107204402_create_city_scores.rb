class CreateCityScores < ActiveRecord::Migration
  def change
    create_table :city_scores do |t|
      t.float :score
      t.references :city
      t.references :user

      t.timestamps
    end
    add_index :city_scores, :city_id
    add_index :city_scores, :user_id
  end
end
