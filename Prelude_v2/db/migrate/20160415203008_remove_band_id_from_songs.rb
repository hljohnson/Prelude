class RemoveBandIdFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :band_id, :integer
  end
end
