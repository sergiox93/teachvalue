class CreatePerros < ActiveRecord::Migration[5.1]
  def change
    create_table :perros do |t|
      t.string :nombre
      t.integer :edad

      t.timestamps
    end
  end
end
