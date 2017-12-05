class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :level
      t.string :user
      t.string :password
      t.integer :age
      t.string :correo

      t.timestamps
    end
  end
end
