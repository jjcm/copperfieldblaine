class LifestyleSubgenreInferenceConnector < ActiveRecord::Base
  attr_accessible :inference_id, :lifestyle_subgenre_id
  belongs_to :inference
  belongs_to :lifestyle_subgenre
end
