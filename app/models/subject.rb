class Subject < ApplicationRecord
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :questions

  def questions_count
    subjects = []
    questions = []
    Subject.all.each do |subject|
      subjects << subject.name
      questions << subject.questions.count
    end
    [subjects, questions]
  end
end
