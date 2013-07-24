class AnalyticsController < ApplicationController
  def index
    @user_inference_responses = UserInferenceResponse.all
    @inferences = Inference.all
    @users = User.find(:all, :conditions => ["admin = ?", false])
    @lifestyle_cues = LifestyleCue.all

  end

  def falsetruth
    @inferences = Inference.all
  end

  def truthiness
    @inferences = Inference.all
  end 

  def lifestyle
    @inferences = Inference.all
    @users = User.find(:all, :conditions => ["admin = ?", false])
    @lifestyles = LifestyleCue.all
  end 
end
