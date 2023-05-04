class RemoveColumnPhotoToSpectacles < ActiveRecord::Migration[7.0]
  def change
    remove_column :spectacles, :photo
  end
end
