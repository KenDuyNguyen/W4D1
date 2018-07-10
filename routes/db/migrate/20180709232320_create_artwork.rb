class CreateArtwork < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title, presence: true
      t.string :image_url, presence: true
      t.integer :artist_id, presence: true 
      t.timestamps
    end
    add_index :artworks, :artist_id
    add_index :artworks,[:artist_id,:title], unique:true
  end
end
