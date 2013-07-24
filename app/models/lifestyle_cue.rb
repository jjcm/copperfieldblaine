class LifestyleCue < ActiveRecord::Base
  attr_accessible :cue
  has_many :inferences, :through => :lifestyle_cue_inference_connectors
  has_many :inference_clarifications, :through => :lifestyle_cue_inference_clarification_connectors
  has_many :lifestyle_cue_inference_connectors
  has_many :lifestyle_cue_inference_clarification_connectors
  has_many :lifestyle_subgenres
end
