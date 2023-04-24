class AddCollectedToPerforms < ActiveRecord::Migration[7.0]
  def change
    add_column :performs, :collected, :boolean, default: false
  end
end
