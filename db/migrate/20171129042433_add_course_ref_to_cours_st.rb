class AddCourseRefToCoursSt < ActiveRecord::Migration[5.1]
  def change
    add_reference :cours_sts, :course, foreign_key: true
  end
end
