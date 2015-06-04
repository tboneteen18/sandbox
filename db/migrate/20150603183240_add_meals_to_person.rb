class AddMealsToPerson < ActiveRecord::Migration
  def change
    add_column :meals,:person_id,:integer
  end
end
