class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.datetime :released_at

      t.timestamps null: false
    end
  end
end
