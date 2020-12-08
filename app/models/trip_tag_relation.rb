class TripTagRelation < ApplicationRecord
  belongs_to :trip
  belongs_to :tag

  validates :trip_id,presence:true
  validates :tag_id,presence:true
end
