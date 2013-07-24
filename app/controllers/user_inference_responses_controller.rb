class UserInferenceResponsesController < ApplicationController
  # GET /user_inference_responses
  # GET /user_inference_responses.json
  def index
    @user_inference_responses = UserInferenceResponse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_inference_responses }
    end
  end

  # GET /user_inference_responses/1
  # GET /user_inference_responses/1.json
  def show
    @user_inference_response = UserInferenceResponse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_inference_response }
    end
  end

  # GET /user_inference_responses/new
  # GET /user_inference_responses/new.json
  def new
    @user_inference_response = UserInferenceResponse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_inference_response }
    end
  end

  # GET /user_inference_responses/1/edit
  def edit
    @user_inference_response = UserInferenceResponse.find(params[:id])
  end

  # POST /user_inference_responses
  # POST /user_inference_responses.json
  def create
    @user_inference_response = UserInferenceResponse.new(params[:user_inference_response])

    respond_to do |format|
      if @user_inference_response.save
        format.html { redirect_to @user_inference_response, notice: 'User inference response was successfully created.' }
        format.json { render json: @user_inference_response, status: :created, location: @user_inference_response }
      else
        format.html { render action: "new" }
        format.json { render json: @user_inference_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_inference_responses/1
  # PUT /user_inference_responses/1.json
  def update
    @user_inference_response = UserInferenceResponse.find(params[:id])

    respond_to do |format|
      if @user_inference_response.update_attributes(params[:user_inference_response])
        format.html { redirect_to @user_inference_response, notice: 'User inference response was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_inference_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_inference_responses/1
  # DELETE /user_inference_responses/1.json
  def destroy
    @user_inference_response = UserInferenceResponse.find(params[:id])
    @user_inference_response.destroy

    respond_to do |format|
      format.html { redirect_to user_inference_responses_url }
      format.json { head :no_content }
    end
  end
end
