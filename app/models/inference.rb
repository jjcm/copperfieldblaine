class Inference < ActiveRecord::Base
  attr_accessible :inference
  has_many :user_inference_weights, :dependent => :destroy
  has_many :inference_clarifications, :dependent => :destroy
  has_many :inference_clarification_weights, :dependent => :destroy
  has_many :inference_weights, :dependent => :destroy
  has_many :user_inference_responses, :dependent => :destroy
  has_many :lifestyle_cues, :through => :lifestyle_cue_inference_connectors, :dependent => :destroy
  has_many :lifestyle_subgenres, :through => :lifestyle_subgenre_inference_connectors, :dependent => :destroy
  has_many :lifestyle_cue_inference_connectors, :dependent => :destroy
  has_many :lifestyle_subgenre_inference_connectors, :dependent => :destroy
end
