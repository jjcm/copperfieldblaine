class LifestyleSubgenre < ActiveRecord::Base
  attr_accessible :genre, :lifestyle_cue_id
  belongs_to :lifestyle_cue
  has_many :inferences, :through => :lifestyle_subgenre_inference_connectors
  has_many :inference_clarifications, :through => :lifestyle_subgenre_inference_clarification_connectors
  has_many :lifestyle_subgenre_inference_connectors
  has_many :lifestyle_subgenre_inference_clarification_connectors

end
