class CreateGigposts < ActiveRecord::Migration
  def change
    create_table :gigposts do |t|
      t.integer :hourly_price
      t.string :title
      t.string :description
      t.integer :band_id

      t.timestamps

    end
  end
end
