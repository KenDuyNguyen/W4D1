# == Schema Information
#
# Table name: artwork_shares
#
#  id         :bigint(8)        not null, primary key
#  artwork_id :integer
#  viewer_id  :integer
#

class ArtworkShare < ApplicationRecord
  belongs_to :viewer,
    foreign_key: :viewer_id,
    class_name: :User
    
  belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: :Artwork
end 
