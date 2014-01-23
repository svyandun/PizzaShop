class Crust < ActiveRecord::Base
  attr_accessible :name
  has_many :pizzas
end
