class UserInferenceResponse < ActiveRecord::Base
  attr_accessible :inference_id, :user_id, :inference_clarification_id, :response, :followup

  belongs_to :user
  belongs_to :inference_clarification
  belongs_to :inference

  after_save do
    if(!self.inference_clarification.nil?)
      self.inference_clarification.inference_clarification_weights.each do |weight|
        @user_inference_weight = UserInferenceWeight.find(:first, :conditions => [ "user_id = ? AND inference_id = ?", self.user_id, weight.inference_id])
        if ( @user_inference_weight.nil? )
          @user_inference_weight = UserInferenceWeight.new
          @user_inference_weight.weight = 0
          @user_inference_weight.inference_id = weight.inference_id
          @user_inference_weight.user_id = self.user_id
        end
        if ( @user_inference_weight.weight + weight.weight >= 80 && @user_inference_weight.weight < 80 )
          @user_inference_weight.followup = true
        end
        @user_inference_weight.weight = @user_inference_weight.weight + weight.weight
        @user_inference_weight.save
      end
    end
  end
end
