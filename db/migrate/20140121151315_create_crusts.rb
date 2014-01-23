class CreateCrusts < ActiveRecord::Migration
  def change
    create_table :crusts do |t|
      t.string :name

      t.timestamps
    end
  end
end
