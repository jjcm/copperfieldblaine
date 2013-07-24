class Question < ActiveRecord::Base
  attr_accessible :question, :survey_id

  has_many :answers
  belongs_to :survey
end
