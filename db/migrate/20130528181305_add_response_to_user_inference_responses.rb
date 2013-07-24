class AddResponseToUserInferenceResponses < ActiveRecord::Migration
  def change
    add_column :user_inference_responses, :response, :boolean
  end
end
