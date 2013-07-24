class AddInferenceClarificationToUserInferenceResponse < ActiveRecord::Migration
  def change
    add_column :user_inference_responses, :inference_clarification_id, :integer
    remove_column :user_inference_responses, :response
  end
end
