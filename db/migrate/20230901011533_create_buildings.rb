class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :street
      t.integer :number
      t.references :comuna, null: false, foreign_key: true

      t.timestamps
    end
  end
end
