class AddStudentRefToCoursSt < ActiveRecord::Migration[5.1]
  def change
    add_reference :cours_sts, :student, foreign_key: true
  end
end
