class Trip < ApplicationRecord
  has_many_attached :images, dependent: :destroy


  validates :images, presence: true
  validates :name, presence: true
  validates :text, presence: true
  validates :title, presence: true

  belongs_to :user
end
