class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.string :caption
      t.integer :band_id

      t.timestamps

    end
  end
end
