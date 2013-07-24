class AddLifestyleCueIdToInferences < ActiveRecord::Migration
  def change
    add_column :inferences, :lifestyle_cue_id, :integer
  end
end
