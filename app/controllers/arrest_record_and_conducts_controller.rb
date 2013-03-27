class ArrestRecordAndConductsController < ApplicationController
  # GET /arrest_record_and_conducts
  # GET /arrest_record_and_conducts.json
  def index
    @arrest_record_and_conducts = ArrestRecordAndConduct.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @arrest_record_and_conducts }
    end
  end

  # GET /arrest_record_and_conducts/1
  # GET /arrest_record_and_conducts/1.json
  def show
    @arrest_record_and_conduct = ArrestRecordAndConduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @arrest_record_and_conduct }
    end
  end

  # GET /arrest_record_and_conducts/new
  # GET /arrest_record_and_conducts/new.json
  def new
    @arrest_record_and_conduct = ArrestRecordAndConduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @arrest_record_and_conduct }
    end
  end

  # GET /arrest_record_and_conducts/1/edit
  def edit
    @arrest_record_and_conduct = ArrestRecordAndConduct.find(params[:id])
  end

  # POST /arrest_record_and_conducts
  # POST /arrest_record_and_conducts.json
  def create
    @arrest_record_and_conduct = ArrestRecordAndConduct.new(params[:arrest_record_and_conduct])

    respond_to do |format|
      if @arrest_record_and_conduct.save
        format.html { redirect_to @arrest_record_and_conduct.personal_detail, notice: 'Arrest record and conduct was successfully created.' }
        format.json { render json: @arrest_record_and_conduct, status: :created, location: @arrest_record_and_conduct }
      else
        format.html { render action: "new" }
        format.json { render json: @arrest_record_and_conduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /arrest_record_and_conducts/1
  # PUT /arrest_record_and_conducts/1.json
  def update
    @arrest_record_and_conduct = ArrestRecordAndConduct.find(params[:id])

    respond_to do |format|
      if @arrest_record_and_conduct.update_attributes(params[:arrest_record_and_conduct])
        format.html { redirect_to @arrest_record_and_conduct.personal_detail, notice: 'Arrest record and conduct was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @arrest_record_and_conduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arrest_record_and_conducts/1
  # DELETE /arrest_record_and_conducts/1.json
  def destroy
    @arrest_record_and_conduct = ArrestRecordAndConduct.find(params[:id])
    @arrest_record_and_conduct.destroy

    respond_to do |format|
      format.html { redirect_to @arrest_record_and_conduct.personal_detail }
      format.json { head :no_content }
    end
  end
end
