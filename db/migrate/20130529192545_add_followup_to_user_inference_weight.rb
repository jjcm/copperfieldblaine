class AddFollowupToUserInferenceWeight < ActiveRecord::Migration
  def change
    add_column :user_inference_weights, :followup, :boolean
  end
end
