class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.decimal :price, default => 0
      t.integer :capacity
      t.boolean :includes_food, default => false
      t.boolean :includes_drinks, default => false
      t.datetime :start_at
      t.datetime :ends_at
      t.boolean :active, default => true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
