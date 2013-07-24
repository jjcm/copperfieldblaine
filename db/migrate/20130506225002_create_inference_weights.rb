class CreateInferenceWeights < ActiveRecord::Migration
  def change
    create_table :inference_weights do |t|
      t.integer :answer_id
      t.integer :inference_id
      t.integer :weight

      t.timestamps
    end
  end
end
