class CreatePersonas < ActiveRecord::Migration[5.0]
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido
      t.date :fecha_nac
      t.integer :dni

      t.timestamps
    end
  end
end
