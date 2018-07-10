# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.destroy_all
  Artwork.destroy_all
  ArtworkShare.destroy_all
  
  u1 = User.create!(username: 'b0b')
  u2 = User.create!(username: 'j0hn')
  u3 = User.create!(username: 'kim')
  
  a1 = Artwork.create!(title: 'Google Image', image_url: 'google.com', artist: u1.id)
  a2 = Artwork.create!(title: 'Yahoo Image', image_url: 'yahoo.com', artist_id: u2.id)
  a3 = Artwork.create!(title: 'Apple Image', image_url: 'apple.com', artist_id: u3.id)
  
  aws1 = ArtworkShare.create!(viewer_id: u1.id, artwork_id: a1.id)
  aws2 = ArtworkShare.create!(viewer_id: u2.id, artwork_id: a2.id)
  aws3 = ArtworkShare.create!(viewer_id: u3.id, artwork_id: a3.id)
end 