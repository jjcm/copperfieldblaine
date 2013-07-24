class CreateLifestyleCueInferenceConnectors < ActiveRecord::Migration
  def change
    create_table :lifestyle_cue_inference_connectors do |t|
      t.integer :lifestyle_cue_id
      t.integer :inference_id

      t.timestamps
    end
  end
end
