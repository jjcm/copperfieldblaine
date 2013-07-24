class LifestyleSubgenreInferenceClarificationConnector < ActiveRecord::Base
  attr_accessible :inference_clarification_id, :lifestyle_subgenre_id
  belongs_to :inference_clarification
  belongs_to :lifestyle_subgenre
end
