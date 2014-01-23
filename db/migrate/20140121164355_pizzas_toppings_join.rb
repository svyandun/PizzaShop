class PizzasToppingsJoin < ActiveRecord::Migration
  def up
    create_table :pizzas_toppings, :id => false do |t|
        t.column 'pizza_id', :integer
        t.column 'topping_id', :integer
    end
  end

  def down
    drop_table 'pizzas_toppings'
  end

end
