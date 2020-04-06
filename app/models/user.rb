class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable, :rememberable

  has_many :questions
end
