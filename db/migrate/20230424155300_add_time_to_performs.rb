class AddTimeToPerforms < ActiveRecord::Migration[7.0]
  def change
    add_column :performs, :start_time, :time
  end
end
