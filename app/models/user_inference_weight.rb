class UserInferenceWeight < ActiveRecord::Base
  attr_accessible :inference_id, :user_id, :weight
  belongs_to :inference
  belongs_to :user
end
