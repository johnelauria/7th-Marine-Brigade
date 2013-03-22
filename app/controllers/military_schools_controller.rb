class MilitarySchoolsController < ApplicationController
  # GET /military_schools
  # GET /military_schools.json
  def index
    @military_schools = MilitarySchool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @military_schools }
    end
  end

  # GET /military_schools/1
  # GET /military_schools/1.json
  def show
    @military_school = MilitarySchool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @military_school }
    end
  end

  # GET /military_schools/new
  # GET /military_schools/new.json
  def new
    @military_school = MilitarySchool.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @military_school }
    end
  end

  # GET /military_schools/1/edit
  def edit
    @military_school = MilitarySchool.find(params[:id])
  end

  # POST /military_schools
  # POST /military_schools.json
  def create
    @military_school = MilitarySchool.new(params[:military_school])

    respond_to do |format|
      if @military_school.save
        format.html { redirect_to MilitaryHistory.find(@military_school.military_history_id), notice: 'Military school was successfully created.' }
        format.json { render json: @military_school, status: :created, location: @military_school }
      else
        format.html { render action: "new" }
        format.json { render json: @military_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /military_schools/1
  # PUT /military_schools/1.json
  def update
    @military_school = MilitarySchool.find(params[:id])

    respond_to do |format|
      if @military_school.update_attributes(params[:military_school])
        format.html { redirect_to @military_school, notice: 'Military school was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @military_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /military_schools/1
  # DELETE /military_schools/1.json
  def destroy
    @military_school = MilitarySchool.find(params[:id])
    @military_school.destroy

    respond_to do |format|
      format.html { redirect_to military_schools_url }
      format.json { head :no_content }
    end
  end
end
