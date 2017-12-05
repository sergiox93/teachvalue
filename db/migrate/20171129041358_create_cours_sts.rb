class CreateCoursSts < ActiveRecord::Migration[5.1]
  def change
    create_table :cours_sts do |t|

      t.timestamps
    end
  end
end
