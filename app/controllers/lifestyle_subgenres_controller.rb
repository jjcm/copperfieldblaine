class LifestyleSubgenresController < ApplicationController
  # GET /lifestyle_subgenres
  # GET /lifestyle_subgenres.json
  def index
    @lifestyle_subgenres = LifestyleSubgenre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lifestyle_subgenres }
    end
  end

  # GET /lifestyle_subgenres/1
  # GET /lifestyle_subgenres/1.json
  def show
    @lifestyle_subgenre = LifestyleSubgenre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lifestyle_subgenre }
    end
  end

  # GET /lifestyle_subgenres/new
  # GET /lifestyle_subgenres/new.json
  def new
    @lifestyle_subgenre = LifestyleSubgenre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lifestyle_subgenre }
    end
  end

  # GET /lifestyle_subgenres/1/edit
  def edit
    @lifestyle_subgenre = LifestyleSubgenre.find(params[:id])
  end

  # POST /lifestyle_subgenres
  # POST /lifestyle_subgenres.json
  def create
    @lifestyle_subgenre = LifestyleSubgenre.new(params[:lifestyle_subgenre])

    respond_to do |format|
      if @lifestyle_subgenre.save
        format.html { redirect_to @lifestyle_subgenre, notice: 'Lifestyle subgenre was successfully created.' }
        format.json { render json: @lifestyle_subgenre, status: :created, location: @lifestyle_subgenre }
      else
        format.html { render action: "new" }
        format.json { render json: @lifestyle_subgenre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lifestyle_subgenres/1
  # PUT /lifestyle_subgenres/1.json
  def update
    @lifestyle_subgenre = LifestyleSubgenre.find(params[:id])

    respond_to do |format|
      if @lifestyle_subgenre.update_attributes(params[:lifestyle_subgenre])
        format.html { redirect_to @lifestyle_subgenre, notice: 'Lifestyle subgenre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lifestyle_subgenre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lifestyle_subgenres/1
  # DELETE /lifestyle_subgenres/1.json
  def destroy
    @lifestyle_subgenre = LifestyleSubgenre.find(params[:id])
    @lifestyle_subgenre.destroy

    respond_to do |format|
      format.html { redirect_to lifestyle_subgenres_url }
      format.json { head :no_content }
    end
  end
end
