class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trips
  with_options presence: true do
    validates :name
    validates :age
    validates :sex
  end

end
