class AddUserIdToUserInferenceResponse < ActiveRecord::Migration
  def change
    add_column :user_inference_responses, :user_id, :integer
  end
end
