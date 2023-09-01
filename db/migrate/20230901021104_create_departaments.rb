class CreateDepartaments < ActiveRecord::Migration[7.0]
  def change
    create_table :departaments do |t|
      t.integer :floor
      t.integer :number
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :squaremeters
      t.integer :price
      t.references :client, null: false, foreign_key: true
      t.references :building, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
