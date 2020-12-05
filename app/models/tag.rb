class Tag < ApplicationRecord
  has_many :trip_tag_relations
  has_many :trips, through: :trip_tag_relations
end
