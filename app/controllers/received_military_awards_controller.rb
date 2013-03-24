class ReceivedMilitaryAwardsController < ApplicationController
  # GET /received_military_awards
  # GET /received_military_awards.json
  def index
    @received_military_awards = ReceivedMilitaryAward.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @received_military_awards }
    end
  end

  # GET /received_military_awards/1
  # GET /received_military_awards/1.json
  def show
    @received_military_award = ReceivedMilitaryAward.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @received_military_award }
    end
  end

  # GET /received_military_awards/new
  # GET /received_military_awards/new.json
  def new
    @received_military_award = ReceivedMilitaryAward.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @received_military_award }
    end
  end

  # GET /received_military_awards/1/edit
  def edit
    @received_military_award = ReceivedMilitaryAward.find(params[:id])
  end

  # POST /received_military_awards
  # POST /received_military_awards.json
  def create
    @received_military_award = ReceivedMilitaryAward.new(params[:received_military_award])

    respond_to do |format|
      if @received_military_award.save
        format.html { redirect_to @received_military_award.military_history.personal_detail, notice: 'Received military award was successfully created.' }
        format.json { render json: @received_military_award, status: :created, location: @received_military_award }
      else
        format.html { render action: "new" }
        format.json { render json: @received_military_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /received_military_awards/1
  # PUT /received_military_awards/1.json
  def update
    @received_military_award = ReceivedMilitaryAward.find(params[:id])

    respond_to do |format|
      if @received_military_award.update_attributes(params[:received_military_award])
        format.html { redirect_to @received_military_award, notice: 'Received military award was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @received_military_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /received_military_awards/1
  # DELETE /received_military_awards/1.json
  def destroy
    @received_military_award = ReceivedMilitaryAward.find(params[:id])
    @received_military_award.destroy

    respond_to do |format|
      format.html { redirect_to received_military_awards_url }
      format.json { head :no_content }
    end
  end
end
