class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  has_many :questions
end
