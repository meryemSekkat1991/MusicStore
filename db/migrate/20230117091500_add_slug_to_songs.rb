class AddSlugToSongs < ActiveRecord::Migration[7.0]
  def change
    add_column :songs, :slug, :string
    add_reference :songs, :singer, index: true
  end
end
