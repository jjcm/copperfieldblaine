class InferenceClarificationWeightsController < ApplicationController
  # GET /inference_clarification_weights
  # GET /inference_clarification_weights.json
  def index
    @inference_clarification_weights = InferenceClarificationWeight.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inference_clarification_weights }
    end
  end

  # GET /inference_clarification_weights/1
  # GET /inference_clarification_weights/1.json
  def show
    @inference_clarification_weight = InferenceClarificationWeight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inference_clarification_weight }
    end
  end

  # GET /inference_clarification_weights/new
  # GET /inference_clarification_weights/new.json
  def new
    @inference_clarification_weight = InferenceClarificationWeight.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inference_clarification_weight }
    end
  end

  # GET /inference_clarification_weights/1/edit
  def edit
    @inference_clarification_weight = InferenceClarificationWeight.find(params[:id])
  end

  # POST /inference_clarification_weights
  # POST /inference_clarification_weights.json
  def create
    @inference_clarification_weight = InferenceClarificationWeight.new(params[:inference_clarification_weight])

    respond_to do |format|
      if @inference_clarification_weight.save
        format.html { redirect_to @inference_clarification_weight, notice: 'Inference clarification weight was successfully created.' }
        format.json { render json: @inference_clarification_weight, status: :created, location: @inference_clarification_weight }
      else
        format.html { render action: "new" }
        format.json { render json: @inference_clarification_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inference_clarification_weights/1
  # PUT /inference_clarification_weights/1.json
  def update
    @inference_clarification_weight = InferenceClarificationWeight.find(params[:id])

    respond_to do |format|
      if @inference_clarification_weight.update_attributes(params[:inference_clarification_weight])
        format.html { redirect_to @inference_clarification_weight, notice: 'Inference clarification weight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inference_clarification_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inference_clarification_weights/1
  # DELETE /inference_clarification_weights/1.json
  def destroy
    @inference_clarification_weight = InferenceClarificationWeight.find(params[:id])
    @inference_clarification_weight.destroy

    respond_to do |format|
      format.html { redirect_to inference_clarification_weights_url }
      format.json { head :no_content }
    end
  end
end
