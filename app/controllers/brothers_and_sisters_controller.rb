class BrothersAndSistersController < ApplicationController
  # GET /brothers_and_sisters
  # GET /brothers_and_sisters.json
  def index
    @brothers_and_sisters = BrothersAndSister.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @brothers_and_sisters }
    end
  end

  # GET /brothers_and_sisters/1
  # GET /brothers_and_sisters/1.json
  def show
    @brothers_and_sister = BrothersAndSister.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @brothers_and_sister }
    end
  end

  # GET /brothers_and_sisters/new
  # GET /brothers_and_sisters/new.json
  def new
    @brothers_and_sister = BrothersAndSister.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @brothers_and_sister }
    end
  end

  # GET /brothers_and_sisters/1/edit
  def edit
    @brothers_and_sister = BrothersAndSister.find(params[:id])
  end

  # POST /brothers_and_sisters
  # POST /brothers_and_sisters.json
  def create
    @brothers_and_sister = BrothersAndSister.new(params[:brothers_and_sister])

    respond_to do |format|
      if @brothers_and_sister.save
        format.html { redirect_to PersonalDetail.find(@brothers_and_sister.family_history.id), notice: 'Brothers and sister was successfully created.' }
        format.json { render json: @brothers_and_sister, status: :created, location: @brothers_and_sister }
      else
        format.html { render action: "new" }
        format.json { render json: @brothers_and_sister.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /brothers_and_sisters/1
  # PUT /brothers_and_sisters/1.json
  def update
    @brothers_and_sister = BrothersAndSister.find(params[:id])

    respond_to do |format|
      if @brothers_and_sister.update_attributes(params[:brothers_and_sister])
        format.html { redirect_to PersonalDetail.find(@brothers_and_sister.family_history.id), notice: 'Brothers and sister was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @brothers_and_sister.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brothers_and_sisters/1
  # DELETE /brothers_and_sisters/1.json
  def destroy
    @brothers_and_sister = BrothersAndSister.find(params[:id])
    @brothers_and_sister.destroy

    respond_to do |format|
      format.html { redirect_to PersonalDetail.find(@brothers_and_sister.family_history.id) }
      format.json { head :no_content }
    end
  end
end
