class CreateInferenceClarificationWeights < ActiveRecord::Migration
  def change
    create_table :inference_clarification_weights do |t|
      t.integer :inference_id
      t.integer :weight
      t.integer :inference_clarification_id

      t.timestamps
    end
  end
end
