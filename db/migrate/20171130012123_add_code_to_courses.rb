class AddCodeToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :code, :integer
  end
end
