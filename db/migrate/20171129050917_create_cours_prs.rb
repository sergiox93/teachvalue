class CreateCoursPrs < ActiveRecord::Migration[5.1]
  def change
    create_table :cours_prs do |t|

      t.timestamps
    end
  end
end
