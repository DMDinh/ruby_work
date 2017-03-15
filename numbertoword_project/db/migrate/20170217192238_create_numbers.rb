class CreateNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :numbers do |t|
      t.string :name
      t.integer :num

      t.timestamps
    end
  end
end
