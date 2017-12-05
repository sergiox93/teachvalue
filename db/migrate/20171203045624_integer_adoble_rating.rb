class IntegerAdobleRating < ActiveRecord::Migration[5.1]
  def change
    
    change_column :ratings, :rating, :decimal

  end
end


