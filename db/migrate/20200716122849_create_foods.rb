class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :carb
      t.timestamps
    end
    add_index :foods, :name,                unique: true
  end
end
