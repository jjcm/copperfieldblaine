class LifestyleCueInferenceClarificationConnector < ActiveRecord::Base
  attr_accessible :inference_clarification_id, :lifestyle_cue_id
  belongs_to :inference_clarification
  belongs_to :lifestyle_cue
end
