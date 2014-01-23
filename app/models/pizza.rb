class Pizza < ActiveRecord::Base
  attr_accessible :crust_id, :name, :price, :topping_ids
  belongs_to :crust
  has_and_belongs_to_many :toppings
end
