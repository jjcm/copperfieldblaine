class InferenceClarificationWeight < ActiveRecord::Base
  attr_accessible :inference_clarification_id, :inference_id, :weight
  belongs_to :inference_clarification
  belongs_to :inference
end
