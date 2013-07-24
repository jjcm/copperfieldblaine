class InferenceClarification < ActiveRecord::Base
  attr_accessible :clarification, :inference_id, :truth_weight

  belongs_to :inference
  has_many :inference_clarification_weights
  has_many :user_inference_responses
  has_many :lifestyle_cues, :through => :lifestyle_cue_inference_clarification_connectors
  has_many :lifestyle_subgenres, :through => :lifestyle_subgenre_inference_clarification_connectors
  has_many :lifestyle_cue_inference_clarification_connectors
  has_many :lifestyle_subgenre_inference_clarification_connectors

  before_save do
    if(self.truth_weight > 10)
      self.truth_weight = 10
    end
    if(self.truth_weight < 0)
      self.truth_weight = 0
    end
  end
end
