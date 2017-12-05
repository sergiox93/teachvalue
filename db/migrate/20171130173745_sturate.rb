class Sturate < ActiveRecord::Migration[5.1]
  def change
            add_reference :ratings, :student, foreign_key: true
  end
end
