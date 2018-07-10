# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string
#

class User < ApplicationRecord 
  validates :username, presence: true, uniqueness: true
  
  has_many :artworks,
    foreign_key: :user_id,
    class_name: :Artwork
    
  has_many :artwork_shares,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare
    
  has_many :shared_artwork,
      through: :artwork_shares,
      source: :artwork
  
end 
