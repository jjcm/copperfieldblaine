class InferenceWeight < ActiveRecord::Base
  attr_accessible :answer_id, :inference_id, :weight

  belongs_to :inference
  belongs_to :answer
end
