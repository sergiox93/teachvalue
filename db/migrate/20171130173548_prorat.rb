class Prorat < ActiveRecord::Migration[5.1]
  def change
        add_reference :ratings, :professor, foreign_key: true
  end
end
