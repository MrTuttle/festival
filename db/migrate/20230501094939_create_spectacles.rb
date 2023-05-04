class CreateSpectacles < ActiveRecord::Migration[7.0]
  def change
    create_table :spectacles do |t|
      t.string :title
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
