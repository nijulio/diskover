class CreateActividads < ActiveRecord::Migration[5.0]
  def change
    create_table :actividads do |t|
      t.string :nombre
      t.string :lugar
      t.integer :precio

      t.timestamps
    end
  end
end
