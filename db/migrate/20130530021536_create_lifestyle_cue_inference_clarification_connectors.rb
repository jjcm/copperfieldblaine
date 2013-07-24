class CreateLifestyleCueInferenceClarificationConnectors < ActiveRecord::Migration
  def change
    create_table :lifestyle_cue_inference_clarification_connectors do |t|
      t.integer :lifestyle_cue_id
      t.integer :inference_clarification_id

      t.timestamps
    end
  end
end
