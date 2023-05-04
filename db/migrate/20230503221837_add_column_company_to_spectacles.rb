class AddColumnCompanyToSpectacles < ActiveRecord::Migration[7.0]
  def change
    add_column :spectacles, :company, :string
  end
end
