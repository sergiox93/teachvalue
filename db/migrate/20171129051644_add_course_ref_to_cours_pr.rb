class AddCourseRefToCoursPr < ActiveRecord::Migration[5.1]
  def change
    add_reference :cours_prs, :course, foreign_key: true
  end
end
