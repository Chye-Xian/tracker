class CreateBeekeepers < ActiveRecord::Migration
  def change
    create_table :beekeepers do |t|
      t.string :fname
      t.string :lname
      t.string :region

      t.timestamps
    end
  end
end
