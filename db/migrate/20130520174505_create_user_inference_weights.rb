class CreateUserInferenceWeights < ActiveRecord::Migration
  def change
    create_table :user_inference_weights do |t|
      t.integer :user_id
      t.integer :inference_id
      t.integer :weight

      t.timestamps
    end
  end
end
