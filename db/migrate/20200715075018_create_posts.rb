class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :foodname1
      t.string :foodname2
      t.string :foodname3
      t.string :foodname4
      t.string :foodname5
      t.integer :gram1
      t.integer :gram2
      t.integer :gram3
      t.integer :gram4
      t.integer :gram5
      t.integer :carb1
      t.integer :carb2
      t.integer :carb3
      t.integer :carb4
      t.integer :carb5
      t.integer :total
      t.string  :memo
      t.string  :time
      t.timestamps
    end
  end
end
