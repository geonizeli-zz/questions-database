class CreateJoinTableQuestionSubject < ActiveRecord::Migration[6.0]
  def change
    create_join_table :questions, :subjects do |t|
      t.index [:question_id, :subject_id]
      t.index [:subject_id, :question_id]
    end
  end
end
