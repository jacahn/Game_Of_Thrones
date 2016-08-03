class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.text :name
      t.text :title
      t.text :culture
      t.references :house, foreign_key: true

      t.timestamps
    end
  end
end
