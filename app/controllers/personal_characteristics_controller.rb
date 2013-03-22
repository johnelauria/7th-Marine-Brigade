class PersonalCharacteristicsController < ApplicationController
  # GET /personal_characteristics
  # GET /personal_characteristics.json
  def index
    @personal_characteristics = PersonalCharacteristic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_characteristics }
    end
  end

  # GET /personal_characteristics/1
  # GET /personal_characteristics/1.json
  def show
    @personal_characteristic = PersonalCharacteristic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_characteristic }
    end
  end

  # GET /personal_characteristics/new
  # GET /personal_characteristics/new.json
  def new
    @personal_characteristic = PersonalCharacteristic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_characteristic }
    end
  end

  # GET /personal_characteristics/1/edit
  def edit
    @personal_characteristic = PersonalCharacteristic.find(params[:id])
  end

  # POST /personal_characteristics
  # POST /personal_characteristics.json
  def create
    @personal_characteristic = PersonalCharacteristic.new(params[:personal_characteristic])

    respond_to do |format|
      if @personal_characteristic.save
        format.html { redirect_to PersonalDetail.find(@personal_characteristic.personal_detail_id), notice: 'Personal characteristic was successfully created.' }
        format.json { render json: @personal_characteristic, status: :created, location: @personal_characteristic }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_characteristics/1
  # PUT /personal_characteristics/1.json
  def update
    @personal_characteristic = PersonalCharacteristic.find(params[:id])

    respond_to do |format|
      if @personal_characteristic.update_attributes(params[:personal_characteristic])
        format.html { redirect_to PersonalDetail.find(@personal_characteristic.personal_detail_id), notice: 'Personal characteristic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_characteristic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_characteristics/1
  # DELETE /personal_characteristics/1.json
  def destroy
    @personal_characteristic = PersonalCharacteristic.find(params[:id])
    @personal_characteristic.destroy

    respond_to do |format|
      format.html { redirect_to personal_characteristics_url }
      format.json { head :no_content }
    end
  end
end
