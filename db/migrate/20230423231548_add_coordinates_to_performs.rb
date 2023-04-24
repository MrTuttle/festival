class AddCoordinatesToPerforms < ActiveRecord::Migration[7.0]
  def change
    add_column :performs, :latitude, :float
    add_column :performs, :longitude, :float
  end
end
