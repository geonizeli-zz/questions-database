class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.integer :difficulty

      t.timestamps
    end
  end
end
