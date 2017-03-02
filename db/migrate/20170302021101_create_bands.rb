class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :description
      t.string :primary_genre
      t.integer :genre_id

      t.timestamps

    end
  end
end
