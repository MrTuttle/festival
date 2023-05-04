class RemoveColumnCompanyInPerforms < ActiveRecord::Migration[7.0]
  def change
    remove_column :performs, :company, :string
  end
end
