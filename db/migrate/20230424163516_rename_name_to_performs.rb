class RenameNameToPerforms < ActiveRecord::Migration[7.0]
  def change
    rename_column :performs, :name, :company
  end
end
