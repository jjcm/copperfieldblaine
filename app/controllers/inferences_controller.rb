class InferencesController < ApplicationController
  # GET /inferences
  # GET /inferences.json
  def index
    @inferences = Inference.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inferences }
    end
  end

  # GET /inferences/1
  # GET /inferences/1.json
  def show
    @inference = Inference.find(params[:id])
    @answersThatTrigger = []
    @inference.inference_weights.each do |weight|
      @answersThatTrigger.push(weight.answer_id)
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inference }
    end
  end

  # GET /inferences/new
  # GET /inferences/new.json
  def new
    @inference = Inference.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inference }
    end
  end

  # GET /inferences/1/edit
  def edit
    @inference = Inference.find(params[:id])
  end

  # POST /inferences
  # POST /inferences.json
  def create
    @inference = Inference.new(params[:inference])

    respond_to do |format|
      if @inference.save
        format.html { redirect_to @inference, notice: 'Inference was successfully created.' }
        format.json { render json: @inference, status: :created, location: @inference }
      else
        format.html { render action: "new" }
        format.json { render json: @inference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inferences/1
  # PUT /inferences/1.json
  def update
    @inference = Inference.find(params[:id])

    respond_to do |format|
      if @inference.update_attributes(params[:inference])
        format.html { redirect_to @inference, notice: 'Inference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inferences/1
  # DELETE /inferences/1.json
  def destroy
    @inference = Inference.find(params[:id])
    @inference.destroy

    respond_to do |format|
      format.html { redirect_to inferences_url }
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

  def new_lifestyle_cue_partial
    @lifestyle_cue_inference_connector = LifestyleCueInferenceConnector.new
    @cues = LifestyleCue.all
    respond_to do |format|
      format.js 
    end
  end

  def new_clarification_lifestyle_subgenre_partial
    @lifestyle_subgenre_inference_clarification_connector = LifestyleSubgenreInferenceClarificationConnector.new
    @subgenres = LifestyleSubgenre.find(:all, :conditions => [ "lifestyle_cue_id = ?", params[:cue]])
    respond_to do |format|
      format.js 
    end
  end

  def new_lifestyle_subgenre_partial
    @lifestyle_subgenre_inference_connector = LifestyleSubgenreInferenceConnector.new
    @subgenres = LifestyleSubgenre.find(:all, :conditions => [ "lifestyle_cue_id = ?", params[:cue]])
    respond_to do |format|
      format.js 
    end
  end
end
