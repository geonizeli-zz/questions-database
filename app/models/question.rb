class Question < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :subjects
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

  def question_difficulty_count
    [
      Question.where(difficulty: 1).count,
      Question.where(difficulty: 2).count,
      Question.where(difficulty: 3).count,
      Question.where(difficulty: 4).count,
      Question.where(difficulty: 5).count
    ]
  end
end
