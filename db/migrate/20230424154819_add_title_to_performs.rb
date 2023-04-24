class AddTitleToPerforms < ActiveRecord::Migration[7.0]
  def change
    add_column :performs, :title, :string
  end
end
