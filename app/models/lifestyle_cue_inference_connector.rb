class LifestyleCueInferenceConnector < ActiveRecord::Base
  attr_accessible :inference_id, :lifestyle_cue_id
  belongs_to :inference
  belongs_to :lifestyle_cue
end
