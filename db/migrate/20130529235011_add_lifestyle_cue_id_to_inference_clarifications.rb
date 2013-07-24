class AddLifestyleCueIdToInferenceClarifications < ActiveRecord::Migration
  def change
    add_column :inference_clarifications, :lifestyle_cue_id, :integer
  end
end
