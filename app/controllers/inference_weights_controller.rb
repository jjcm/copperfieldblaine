class InferenceWeightsController < ApplicationController
  # GET /inference_weights
  # GET /inference_weights.json
  def index
    @inference_weights = InferenceWeight.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => inference_json(@inference_weights) }
    end
  end

  def inference_json(value)
    list = value.map do |weight|
      {
      :id => weight.id,
      :weight => weight.weight,
      :inference => weight.inference.inference,
      :answer => weight.answer.answer
      }
    end
    list.to_json
  end

  # GET /inference_weights/1
  # GET /inference_weights/1.json
  def show
    @inference_weight = InferenceWeight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inference_weight }
    end
  end

  # GET /inference_weights/new
  # GET /inference_weights/new.json
  def new
    @inference_weight = InferenceWeight.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inference_weight }
    end
  end

  # GET /inference_weights/1/edit
  def edit
    @inference_weight = InferenceWeight.find(params[:id])
  end

  # POST /inference_weights
  # POST /inference_weights.json
  def create
    @inference_weight = InferenceWeight.new(params[:inference_weight])

    respond_to do |format|
      if @inference_weight.save
        format.html { redirect_to @inference_weight, notice: 'Inference weight was successfully created.' }
        format.json { render json: @inference_weight, status: :created, location: @inference_weight }
      else
        format.html { render action: "new" }
        format.json { render json: @inference_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inference_weights/1
  # PUT /inference_weights/1.json
  def update
    @inference_weight = InferenceWeight.find(params[:id])

    respond_to do |format|
      if @inference_weight.update_attributes(params[:inference_weight])
        format.html { redirect_to @inference_weight, notice: 'Inference weight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inference_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inference_weights/1
  # DELETE /inference_weights/1.json
  def destroy
    @inference_weight = InferenceWeight.find(params[:id])
    @inference_weight.destroy

    respond_to do |format|
      format.html { redirect_to inference_weights_url }
      format.json { head :no_content }
    end
  end
end
