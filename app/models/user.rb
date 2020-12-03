class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trips

  validates :name, presence: true
  validates :age, presence: true
  validates :sex, presence: true

end
