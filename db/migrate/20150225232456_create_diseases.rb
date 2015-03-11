class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :disease
      t.datetime :date_found
      t.references :hive, index: true

      t.timestamps
    end
  end
end
