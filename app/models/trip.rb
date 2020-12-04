class Trip < ApplicationRecord
  has_many_attached :images
  belongs_to :user, optional: true

  with_options presence: true do
    validates :images
    validates :name
    validates :text
    validates :title
  end

  
end
