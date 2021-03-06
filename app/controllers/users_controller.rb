class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @user_inference_weights = UserInferenceWeight.find(:all, :conditions => ["user_id = ?", params[:id]])
    @user_inference_responses = UserInferenceResponse.find(:all, :conditions => ["user_id = ?", params[:id]])
    @user_inference_responses = @user_inference_responses.map{|response| response.inference_id}
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def followup
    @user = User.find(params[:id])
    @user_inference_weights = UserInferenceWeight.find(:all, :conditions => ["user_id = ? AND followup = ?", params[:id], true])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    if(!current_user.nil? && current_user.admin || current_user.id = params[:id])
      @user = User.find(params[:id])
    end

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    if(!current_user.nil? && current_user.admin)
      @user = User.find(params[:id])
      @user.destroy
    end

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def new_inference_clarification_partial
    @inference_clarification = InferenceClarification.new
    respond_to do |format|
      format.js 
    end
  end

  def new_inference_clarification_weight_partial
    @inference_clarification_weight = InferenceClarificationWeight.new
    @inferences = Inference.all
    respond_to do |format|
      format.js 
    end
  end

  def new_user_inference_response_partial
    @user_inference_response  = UserInferenceResponse.new
    @inference_clarifications = InferenceClarification.find(:all, :conditions => [ "inference_id = ?", params[:inference]])
    respond_to do |format|
      format.js 
    end
  end
end
