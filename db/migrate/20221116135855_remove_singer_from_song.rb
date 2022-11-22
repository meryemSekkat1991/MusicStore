class RemoveSingerFromSong < ActiveRecord::Migration[7.0]
  def change
    remove_column :songs, :singer, :string
  end
end
