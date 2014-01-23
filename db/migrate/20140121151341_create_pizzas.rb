class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :name
      t.decimal :price
      t.integer :crust_id

      t.timestamps
    end
  end
end
