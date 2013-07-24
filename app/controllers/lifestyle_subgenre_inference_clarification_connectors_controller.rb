class LifestyleSubgenreInferenceClarificationConnectorsController < ApplicationController
  # GET /lifestyle_subgenre_inference_clarification_connectors
  # GET /lifestyle_subgenre_inference_clarification_connectors.json
  def index
    @lifestyle_subgenre_inference_clarification_connectors = LifestyleSubgenreInferenceClarificationConnector.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lifestyle_subgenre_inference_clarification_connectors }
    end
  end

  # GET /lifestyle_subgenre_inference_clarification_connectors/1
  # GET /lifestyle_subgenre_inference_clarification_connectors/1.json
  def show
    @lifestyle_subgenre_inference_clarification_connector = LifestyleSubgenreInferenceClarificationConnector.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lifestyle_subgenre_inference_clarification_connector }
    end
  end

  # GET /lifestyle_subgenre_inference_clarification_connectors/new
  # GET /lifestyle_subgenre_inference_clarification_connectors/new.json
  def new
    @lifestyle_subgenre_inference_clarification_connector = LifestyleSubgenreInferenceClarificationConnector.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lifestyle_subgenre_inference_clarification_connector }
    end
  end

  # GET /lifestyle_subgenre_inference_clarification_connectors/1/edit
  def edit
    @lifestyle_subgenre_inference_clarification_connector = LifestyleSubgenreInferenceClarificationConnector.find(params[:id])
  end

  # POST /lifestyle_subgenre_inference_clarification_connectors
  # POST /lifestyle_subgenre_inference_clarification_connectors.json
  def create
    @lifestyle_subgenre_inference_clarification_connector = LifestyleSubgenreInferenceClarificationConnector.new(params[:lifestyle_subgenre_inference_clarification_connector])

    respond_to do |format|
      if @lifestyle_subgenre_inference_clarification_connector.save
        format.html { redirect_to @lifestyle_subgenre_inference_clarification_connector, notice: 'Lifestyle subgenre inference clarification connector was successfully created.' }
        format.json { render json: @lifestyle_subgenre_inference_clarification_connector, status: :created, location: @lifestyle_subgenre_inference_clarification_connector }
      else
        format.html { render action: "new" }
        format.json { render json: @lifestyle_subgenre_inference_clarification_connector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lifestyle_subgenre_inference_clarification_connectors/1
  # PUT /lifestyle_subgenre_inference_clarification_connectors/1.json
  def update
    @lifestyle_subgenre_inference_clarification_connector = LifestyleSubgenreInferenceClarificationConnector.find(params[:id])

    respond_to do |format|
      if @lifestyle_subgenre_inference_clarification_connector.update_attributes(params[:lifestyle_subgenre_inference_clarification_connector])
        format.html { redirect_to @lifestyle_subgenre_inference_clarification_connector, notice: 'Lifestyle subgenre inference clarification connector was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lifestyle_subgenre_inference_clarification_connector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifestyle_subgenre_inference_clarification_connectors/1
  # DELETE /lifestyle_subgenre_inference_clarification_connectors/1.json
  def destroy
    @lifestyle_subgenre_inference_clarification_connector = LifestyleSubgenreInferenceClarificationConnector.find(params[:id])
    @lifestyle_subgenre_inference_clarification_connector.destroy

    respond_to do |format|
      format.html { redirect_to lifestyle_subgenre_inference_clarification_connectors_url }
      format.json { head :no_content }
    end
  end
end
