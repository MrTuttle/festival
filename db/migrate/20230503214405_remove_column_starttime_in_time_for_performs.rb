class RemoveColumnStarttimeInTimeForPerforms < ActiveRecord::Migration[7.0]
  def change
    remove_column :performs, :start_time, :time
  end
end
