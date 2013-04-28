class VehiclePasscardsController < ApplicationController
  # GET /vehicle_passcards
  # GET /vehicle_passcards.json
  def index
    @vehicle_passcards = VehiclePasscard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vehicle_passcards }
    end
  end

  # GET /vehicle_passcards/1
  # GET /vehicle_passcards/1.json
  def show
    @vehicle_passcard = VehiclePasscard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vehicle_passcard }
    end
  end

  # GET /vehicle_passcards/new
  # GET /vehicle_passcards/new.json
  def new
    @vehicle_passcard = VehiclePasscard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vehicle_passcard }
    end
  end

  # GET /vehicle_passcards/1/edit
  def edit
    @vehicle_passcard = VehiclePasscard.find(params[:id])
  end

  # POST /vehicle_passcards
  # POST /vehicle_passcards.json
  def create
    @vehicle_passcard = VehiclePasscard.new(params[:vehicle_passcard])

    respond_to do |format|
      if @vehicle_passcard.save
        format.html { redirect_to vehicle_passcard_personal_detail_path(@vehicle_passcard.personal_detail_id), notice: 'Vehicle passcard was successfully created.' }
        format.json { render json: @vehicle_passcard, status: :created, location: @vehicle_passcard }
      else
        format.html { render action: "new" }
        format.json { render json: @vehicle_passcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vehicle_passcards/1
  # PUT /vehicle_passcards/1.json
  def update
    @vehicle_passcard = VehiclePasscard.find(params[:id])

    respond_to do |format|
      if @vehicle_passcard.update_attributes(params[:vehicle_passcard])
        format.html { redirect_to vehicle_passcard_personal_detail_path(@vehicle_passcard.personal_detail_id), notice: 'Vehicle passcard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vehicle_passcard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_passcards/1
  # DELETE /vehicle_passcards/1.json
  def destroy
    @vehicle_passcard = VehiclePasscard.find(params[:id])
    @vehicle_passcard.destroy

    respond_to do |format|
      format.html { redirect_to vehicle_passcard_personal_detail_path(@vehicle_passcard.personal_detail_id) }
      format.json { head :no_content }
    end
  end
end
