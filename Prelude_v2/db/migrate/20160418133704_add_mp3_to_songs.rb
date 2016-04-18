class AddMp3ToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :mp3, :string
  end
end
