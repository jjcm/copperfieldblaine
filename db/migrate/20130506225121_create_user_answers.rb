class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.integer :user_id
      t.integer :answer_id
      t.integer :survey_id

      t.timestamps
    end
  end
end
