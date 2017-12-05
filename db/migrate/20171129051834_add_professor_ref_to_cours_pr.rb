class AddProfessorRefToCoursPr < ActiveRecord::Migration[5.1]
  def change
    add_reference :cours_prs, :professor, foreign_key: true
  end
end
