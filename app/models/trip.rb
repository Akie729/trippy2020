class Trip < ApplicationRecord
  has_many_attached :images

  validates :image, presence: true
  validates :name, presence: true
  validates :text, presence: true
end
