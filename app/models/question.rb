class Question < ApplicationRecord
  has_rich_text :content

  validates :title, :content, presence: true

  validates :difficulty, numericality: { greater_than: 0, less_than: 6 }
end
