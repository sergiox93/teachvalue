class ChangeDateFormatInMyTable < ActiveRecord::Migration[5.1]
  def change
    
    change_column :ratings, :rating, 'integer USING CAST(rating AS integer)'

  end
end
