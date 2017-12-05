class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :user
      t.string :password
      t.integer :st_id
      t.integer :edad
      t.string :correo

      t.timestamps
    end
  end
end
