class CivilianMilitaryAwardsController < ApplicationController
  # GET /civilian_military_awards
  # GET /civilian_military_awards.json
  def index
    @civilian_military_awards = CivilianMilitaryAward.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @civilian_military_awards }
    end
  end

  # GET /civilian_military_awards/1
  # GET /civilian_military_awards/1.json
  def show
    @civilian_military_award = CivilianMilitaryAward.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @civilian_military_award }
    end
  end

  # GET /civilian_military_awards/new
  # GET /civilian_military_awards/new.json
  def new
    @civilian_military_award = CivilianMilitaryAward.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @civilian_military_award }
    end
  end

  # GET /civilian_military_awards/1/edit
  def edit
    @civilian_military_award = CivilianMilitaryAward.find(params[:id])
  end

  # POST /civilian_military_awards
  # POST /civilian_military_awards.json
  def create
    @civilian_military_award = CivilianMilitaryAward.new(params[:civilian_military_award])

    respond_to do |format|
      if @civilian_military_award.save
        format.html { redirect_to @civilian_military_award.rid, notice: 'Civilian military award was successfully created.' }
        format.json { render json: @civilian_military_award, status: :created, location: @civilian_military_award }
      else
        format.html { render action: "new" }
        format.json { render json: @civilian_military_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /civilian_military_awards/1
  # PUT /civilian_military_awards/1.json
  def update
    @civilian_military_award = CivilianMilitaryAward.find(params[:id])

    respond_to do |format|
      if @civilian_military_award.update_attributes(params[:civilian_military_award])
        format.html { redirect_to @civilian_military_award.rid, notice: 'Civilian military award was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @civilian_military_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /civilian_military_awards/1
  # DELETE /civilian_military_awards/1.json
  def destroy
    @civilian_military_award = CivilianMilitaryAward.find(params[:id])
    @civilian_military_award.destroy

    respond_to do |format|
      format.html { redirect_to @civilian_military_award.rid }
      format.json { head :no_content }
    end
  end
end
