class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :to_user_id
      t.integer :from_user_id
      t.text :body

      t.timestamps

    end
  end
end
