class AddReferencesPerforms < ActiveRecord::Migration[7.0]
  def change
    add_reference :performs, :spectacle, index: true
  end
end
