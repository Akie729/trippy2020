class Trip < ApplicationRecord
  has_many_attached :images
  belongs_to :user, optional: true
  has_many :trip_tag_relations
  has_many :tags, through: :trip_tag_relations

end
