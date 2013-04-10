class CommendationsController < ApplicationController
  # GET /commendations
  # GET /commendations.json
  def index
    @commendations = Commendation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commendations }
    end
  end

  # GET /commendations/1
  # GET /commendations/1.json
  def show
    @commendation = Commendation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commendation }
    end
  end

  # GET /commendations/new
  # GET /commendations/new.json
  def new
    @commendation = Commendation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commendation }
    end
  end

  # GET /commendations/1/edit
  def edit
    @commendation = Commendation.find(params[:id])
  end

  # POST /commendations
  # POST /commendations.json
  def create
    @commendation = Commendation.new(params[:commendation])

    respond_to do |format|
      if @commendation.save
        format.html { redirect_to @commendation.soi_form, notice: 'Commendation was successfully created.' }
        format.json { render json: @commendation, status: :created, location: @commendation }
      else
        format.html { redirect_to @commendation.soi_form }
        format.json { render json: @commendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commendations/1
  # PUT /commendations/1.json
  def update
    @commendation = Commendation.find(params[:id])

    respond_to do |format|
      if @commendation.update_attributes(params[:commendation])
        format.html { redirect_to @commendation.soi_form, notice: 'Commendation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commendations/1
  # DELETE /commendations/1.json
  def destroy
    @commendation = Commendation.find(params[:id])
    @commendation.destroy

    respond_to do |format|
      format.html { redirect_to @commendation.soi_form }
      format.json { head :no_content }
    end
  end
end
