class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :singer
      t.string :kind

      t.timestamps
    end
  end
end
