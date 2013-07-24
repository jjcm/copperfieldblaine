class UserAnswer < ActiveRecord::Base
  attr_accessible :answer_id, :survey_id, :user_id

  belongs_to :survey
  belongs_to :user
  belongs_to :answer

  after_save do
    self.answer.inference_weights.each do |weight|
      @user_inference_weight = UserInferenceWeight.find(:first, :conditions => [ "user_id = ? AND inference_id = ?", self.user_id, weight.inference_id])
      if ( @user_inference_weight.nil? )
        @user_inference_weight = UserInferenceWeight.new
        @user_inference_weight.weight = 0
        @user_inference_weight.inference_id = weight.inference_id
        @user_inference_weight.user_id = self.user_id
      end
      @user_inference_weight.weight = @user_inference_weight.weight + weight.weight
      @user_inference_weight.save
    end
  end
end
