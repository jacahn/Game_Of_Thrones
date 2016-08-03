class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :word
      t.string :allegiance
      t.timestamps
    end
  end
end

# create migrate seed
