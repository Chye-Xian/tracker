class CreateHives < ActiveRecord::Migration
  def change
    create_table :hives do |t|
      t.string :name
      t.integer :population
      t.references :beekeeper, index: true

      t.timestamps
    end
  end
end
