class AppreciationMeritsController < ApplicationController
  # GET /appreciation_merits
  # GET /appreciation_merits.json
  def index
    @appreciation_merits = AppreciationMerit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appreciation_merits }
    end
  end

  # GET /appreciation_merits/1
  # GET /appreciation_merits/1.json
  def show
    @appreciation_merit = AppreciationMerit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appreciation_merit }
    end
  end

  # GET /appreciation_merits/new
  # GET /appreciation_merits/new.json
  def new
    @appreciation_merit = AppreciationMerit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appreciation_merit }
    end
  end

  # GET /appreciation_merits/1/edit
  def edit
    @appreciation_merit = AppreciationMerit.find(params[:id])
  end

  # POST /appreciation_merits
  # POST /appreciation_merits.json
  def create
    @appreciation_merit = AppreciationMerit.new(params[:appreciation_merit])

    respond_to do |format|
      if @appreciation_merit.save
        format.html { redirect_to @appreciation_merit.soi_form, notice: 'Appreciation merit was successfully created.' }
        format.json { render json: @appreciation_merit, status: :created, location: @appreciation_merit }
      else
        format.html { redirect_to @appreciation_merit.soi_form }
        format.json { render json: @appreciation_merit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /appreciation_merits/1
  # PUT /appreciation_merits/1.json
  def update
    @appreciation_merit = AppreciationMerit.find(params[:id])

    respond_to do |format|
      if @appreciation_merit.update_attributes(params[:appreciation_merit])
        format.html { redirect_to @appreciation_merit.soi_form, notice: 'Appreciation merit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @appreciation_merit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appreciation_merits/1
  # DELETE /appreciation_merits/1.json
  def destroy
    @appreciation_merit = AppreciationMerit.find(params[:id])
    @appreciation_merit.destroy

    respond_to do |format|
      format.html { redirect_to @appreciation_merit.soi_form }
      format.json { head :no_content }
    end
  end
end
