class CreateInferenceClarifications < ActiveRecord::Migration
  def change
    create_table :inference_clarifications do |t|
      t.string :clarification
      t.integer :inference_id

      t.timestamps
    end
  end
end
