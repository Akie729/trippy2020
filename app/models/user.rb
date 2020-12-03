class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trips

  validates :name, presence: true
  validates :age
  validates :sex

end
