class AadtsController < ApplicationController
  # GET /aadts
  # GET /aadts.json
  def index
    @aadts = Aadt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aadts }
    end
  end

  # GET /aadts/1
  # GET /aadts/1.json
  def show
    @aadt = Aadt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aadt }
    end
  end

  # GET /aadts/new
  # GET /aadts/new.json
  def new
    @aadt = Aadt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aadt }
    end
  end

  # GET /aadts/1/edit
  def edit
    @aadt = Aadt.find(params[:id])
  end

  # POST /aadts
  # POST /aadts.json
  def create
    @aadt = Aadt.new(params[:aadt])

    respond_to do |format|
      if @aadt.save
        format.html { redirect_to @aadt, notice: 'Aadt was successfully created.' }
        format.json { render json: @aadt, status: :created, location: @aadt }
      else
        format.html { render action: "new" }
        format.json { render json: @aadt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aadts/1
  # PUT /aadts/1.json
  def update
    @aadt = Aadt.find(params[:id])

    respond_to do |format|
      if @aadt.update_attributes(params[:aadt])
        format.html { redirect_to @aadt, notice: 'Aadt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aadt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aadts/1
  # DELETE /aadts/1.json
  def destroy
    @aadt = Aadt.find(params[:id])
    @aadt.destroy

    respond_to do |format|
      format.html { redirect_to aadts_url }
      format.json { head :no_content }
    end
  end
end
