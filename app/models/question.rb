class Question < ApplicationRecord
  belongs_to :user
  has_rich_text :content

  validates :title, :content, presence: true
  validates :difficulty, numericality: { greater_than: 0, less_than: 6 }

  def questions_count
    names = []
    questions = []
    User.all.each do |user|
      names << user.name
      questions << user.questions.count
    end
    [names, questions]
  end
end
