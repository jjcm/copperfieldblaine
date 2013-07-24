class CreateUserInferenceResponses < ActiveRecord::Migration
  def change
    create_table :user_inference_responses do |t|
      t.boolean :response
      t.integer :inference_id

      t.timestamps
    end
  end
end
