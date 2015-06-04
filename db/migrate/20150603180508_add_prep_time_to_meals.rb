class AddPrepTimeToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :preptime, :integer, default:30
  end
end
