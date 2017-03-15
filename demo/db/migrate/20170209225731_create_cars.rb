class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :vin
      t.string :color
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
