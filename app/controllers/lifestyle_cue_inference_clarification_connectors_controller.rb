class LifestyleCueInferenceClarificationConnectorsController < ApplicationController
  # GET /lifestyle_cue_inference_clarification_connectors
  # GET /lifestyle_cue_inference_clarification_connectors.json
  def index
    @lifestyle_cue_inference_clarification_connectors = LifestyleCueInferenceClarificationConnector.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lifestyle_cue_inference_clarification_connectors }
    end
  end

  # GET /lifestyle_cue_inference_clarification_connectors/1
  # GET /lifestyle_cue_inference_clarification_connectors/1.json
  def show
    @lifestyle_cue_inference_clarification_connector = LifestyleCueInferenceClarificationConnector.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lifestyle_cue_inference_clarification_connector }
    end
  end

  # GET /lifestyle_cue_inference_clarification_connectors/new
  # GET /lifestyle_cue_inference_clarification_connectors/new.json
  def new
    @lifestyle_cue_inference_clarification_connector = LifestyleCueInferenceClarificationConnector.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lifestyle_cue_inference_clarification_connector }
    end
  end

  # GET /lifestyle_cue_inference_clarification_connectors/1/edit
  def edit
    @lifestyle_cue_inference_clarification_connector = LifestyleCueInferenceClarificationConnector.find(params[:id])
  end

  # POST /lifestyle_cue_inference_clarification_connectors
  # POST /lifestyle_cue_inference_clarification_connectors.json
  def create
    @lifestyle_cue_inference_clarification_connector = LifestyleCueInferenceClarificationConnector.new(params[:lifestyle_cue_inference_clarification_connector])

    respond_to do |format|
      if @lifestyle_cue_inference_clarification_connector.save
        format.html { redirect_to @lifestyle_cue_inference_clarification_connector, notice: 'Lifestyle cue inference clarification connector was successfully created.' }
        format.json { render json: @lifestyle_cue_inference_clarification_connector, status: :created, location: @lifestyle_cue_inference_clarification_connector }
      else
        format.html { render action: "new" }
        format.json { render json: @lifestyle_cue_inference_clarification_connector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lifestyle_cue_inference_clarification_connectors/1
  # PUT /lifestyle_cue_inference_clarification_connectors/1.json
  def update
    @lifestyle_cue_inference_clarification_connector = LifestyleCueInferenceClarificationConnector.find(params[:id])

    respond_to do |format|
      if @lifestyle_cue_inference_clarification_connector.update_attributes(params[:lifestyle_cue_inference_clarification_connector])
        format.html { redirect_to @lifestyle_cue_inference_clarification_connector, notice: 'Lifestyle cue inference clarification connector was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lifestyle_cue_inference_clarification_connector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifestyle_cue_inference_clarification_connectors/1
  # DELETE /lifestyle_cue_inference_clarification_connectors/1.json
  def destroy
    @lifestyle_cue_inference_clarification_connector = LifestyleCueInferenceClarificationConnector.find(params[:id])
    @lifestyle_cue_inference_clarification_connector.destroy

    respond_to do |format|
      format.html { redirect_to lifestyle_cue_inference_clarification_connectors_url }
      format.json { head :no_content }
    end
  end
end
