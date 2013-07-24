class InferenceClarificationsController < ApplicationController
  # GET /inference_clarifications
  # GET /inference_clarifications.json
  def index
    @inference_clarifications = InferenceClarification.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inference_clarifications }
    end
  end

  # GET /inference_clarifications/1
  # GET /inference_clarifications/1.json
  def show
    @inference_clarification = InferenceClarification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inference_clarification }
    end
  end

  # GET /inference_clarifications/new
  # GET /inference_clarifications/new.json
  def new
    @inference_clarification = InferenceClarification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inference_clarification }
    end
  end

  # GET /inference_clarifications/1/edit
  def edit
    @inference_clarification = InferenceClarification.find(params[:id])
  end

  # POST /inference_clarifications
  # POST /inference_clarifications.json
  def create
    @inference_clarification = InferenceClarification.new(params[:inference_clarification])

    respond_to do |format|
      if @inference_clarification.save
        format.html { redirect_to @inference_clarification, notice: 'Inference clarification was successfully created.' }
        format.json { render json: @inference_clarification, status: :created, location: @inference_clarification }
      else
        format.html { render action: "new" }
        format.json { render json: @inference_clarification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inference_clarifications/1
  # PUT /inference_clarifications/1.json
  def update
    @inference_clarification = InferenceClarification.find(params[:id])

    respond_to do |format|
      if @inference_clarification.update_attributes(params[:inference_clarification])
        format.html { redirect_to @inference_clarification, notice: 'Inference clarification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inference_clarification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inference_clarifications/1
  # DELETE /inference_clarifications/1.json
  def destroy
    @inference_clarification = InferenceClarification.find(params[:id])
    @inference_clarification.destroy

    respond_to do |format|
      format.html { redirect_to inference_clarifications_url }
      format.json { head :no_content }
    end
  end
end
