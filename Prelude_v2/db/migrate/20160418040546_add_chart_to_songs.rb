class AddChartToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :chart, :string
  end
end
