class CreateTurista < ActiveRecord::Migration[5.0]
  def change
    create_table :turista do |t|
      t.string :nombre
      t.string :mail
      t.string :contrasena

      t.timestamps
    end
  end
end
