class RemoveLifestylesFromInferences < ActiveRecord::Migration
  def up
    remove_column :inference_clarifications, :lifestyle_cue_id
    remove_column :inference_clarifications, :lifestyle_subgenre_id
    remove_column :inferences, :lifestyle_cue_id
    remove_column :inferences, :lifestyle_subgenre_id
  end

  def down
  end
end
