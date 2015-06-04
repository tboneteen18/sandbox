class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :calories, default: 0
      t.timestamps null: false
    end
  end
end
