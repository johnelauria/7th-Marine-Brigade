class GeneralInformationsController < ApplicationController
  # GET /general_informations
  # GET /general_informations.json
  def index
    @general_informations = GeneralInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @general_informations }
    end
  end

  # GET /general_informations/1
  # GET /general_informations/1.json
  def show
    @general_information = GeneralInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @general_information }
    end
  end

  # GET /general_informations/new
  # GET /general_informations/new.json
  def new
    @general_information = GeneralInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @general_information }
    end
  end

  # GET /general_informations/1/edit
  def edit
    @general_information = GeneralInformation.find(params[:id])
  end

  # POST /general_informations
  # POST /general_informations.json
  def create
    @general_information = GeneralInformation.new(params[:general_information])

    respond_to do |format|
      if @general_information.save
        format.html { redirect_to @general_information.personal_detail, notice: 'General information was successfully created.' }
        format.json { render json: @general_information, status: :created, location: @general_information }
      else
        format.html { render action: "new" }
        format.json { render json: @general_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /general_informations/1
  # PUT /general_informations/1.json
  def update
    @general_information = GeneralInformation.find(params[:id])

    respond_to do |format|
      if @general_information.update_attributes(params[:general_information])
        format.html { redirect_to @general_information.personal_detail, notice: 'General information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @general_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_informations/1
  # DELETE /general_informations/1.json
  def destroy
    @general_information = GeneralInformation.find(params[:id])
    @general_information.destroy

    respond_to do |format|
      format.html { redirect_to @general_information.personal_detail }
      format.json { head :no_content }
    end
  end
end
