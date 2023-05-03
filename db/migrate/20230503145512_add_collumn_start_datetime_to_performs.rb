class AddCollumnStartDatetimeToPerforms < ActiveRecord::Migration[7.0]
  def change
    add_column :performs, :start, :datetime
  end
end
