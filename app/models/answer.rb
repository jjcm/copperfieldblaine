class Answer < ActiveRecord::Base
  attr_accessible :answer, :question_id

  has_many :inference_weights
  belongs_to :question

end
