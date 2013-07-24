class LifestyleCuesController < ApplicationController
  # GET /lifestyle_cues
  # GET /lifestyle_cues.json
  def index
    @lifestyle_cues = LifestyleCue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lifestyle_cues }
    end
  end

  # GET /lifestyle_cues/1
  # GET /lifestyle_cues/1.json
  def show
    @lifestyle_cue = LifestyleCue.find(params[:id])
    @lifestyle_subgenres = LifestyleSubgenre.find(:all, :conditions => ["lifestyle_cue_id = ?", params[:id]])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lifestyle_cue }
    end
  end

  # GET /lifestyle_cues/new
  # GET /lifestyle_cues/new.json
  def new
    @lifestyle_cue = LifestyleCue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lifestyle_cue }
    end
  end

  # GET /lifestyle_cues/1/edit
  def edit
    @lifestyle_cue = LifestyleCue.find(params[:id])
  end

  # POST /lifestyle_cues
  # POST /lifestyle_cues.json
  def create
    @lifestyle_cue = LifestyleCue.new(params[:lifestyle_cue])

    respond_to do |format|
      if @lifestyle_cue.save
        format.html { redirect_to @lifestyle_cue, notice: 'Lifestyle cue was successfully created.' }
        format.json { render json: @lifestyle_cue, status: :created, location: @lifestyle_cue }
      else
        format.html { render action: "new" }
        format.json { render json: @lifestyle_cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lifestyle_cues/1
  # PUT /lifestyle_cues/1.json
  def update
    @lifestyle_cue = LifestyleCue.find(params[:id])

    respond_to do |format|
      if @lifestyle_cue.update_attributes(params[:lifestyle_cue])
        format.html { redirect_to @lifestyle_cue, notice: 'Lifestyle cue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lifestyle_cue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifestyle_cues/1
  # DELETE /lifestyle_cues/1.json
  def destroy
    @lifestyle_cue = LifestyleCue.find(params[:id])
    @lifestyle_cue.destroy

    respond_to do |format|
      format.html { redirect_to lifestyle_cues_url }
      format.json { head :no_content }
    end
  end
  def new_lifestyle_subgenre_partial
    @lifestyle_subgenre = LifestyleSubgenre.new
    respond_to do |format|
      format.js 
    end
  end
end
