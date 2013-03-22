class PlaceOfResidencesController < ApplicationController
  # GET /place_of_residences
  # GET /place_of_residences.json
  def index
    @place_of_residences = PlaceOfResidence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @place_of_residences }
    end
  end

  # GET /place_of_residences/1
  # GET /place_of_residences/1.json
  def show
    @place_of_residence = PlaceOfResidence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @place_of_residence }
    end
  end

  # GET /place_of_residences/new
  # GET /place_of_residences/new.json
  def new
    @place_of_residence = PlaceOfResidence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @place_of_residence }
    end
  end

  # GET /place_of_residences/1/edit
  def edit
    @place_of_residence = PlaceOfResidence.find(params[:id])
  end

  # POST /place_of_residences
  # POST /place_of_residences.json
  def create
    @place_of_residence = PlaceOfResidence.new(params[:place_of_residence])

    respond_to do |format|
      if @place_of_residence.save
        format.html { redirect_to PersonalDetail.find(@place_of_residence.personal_detail_id), notice: 'Place of residence was successfully created.' }
        format.json { render json: @place_of_residence, status: :created, location: @place_of_residence }
      else
        format.html { render action: "new" }
        format.json { render json: @place_of_residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /place_of_residences/1
  # PUT /place_of_residences/1.json
  def update
    @place_of_residence = PlaceOfResidence.find(params[:id])

    respond_to do |format|
      if @place_of_residence.update_attributes(params[:place_of_residence])
        format.html { redirect_to PersonalDetail.find(@place_of_residence.personal_detail_id), notice: 'Place of residence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @place_of_residence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_of_residences/1
  # DELETE /place_of_residences/1.json
  def destroy
    @place_of_residence = PlaceOfResidence.find(params[:id])
    @place_of_residence.destroy

    respond_to do |format|
      format.html { redirect_to PersonalDetail.find(@place_of_residence.personal_detail_id) }
      format.json { head :no_content }
    end
  end
end
