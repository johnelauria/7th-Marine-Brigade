class MilitaryHistoriesController < ApplicationController
  # GET /military_histories
  # GET /military_histories.json
  def index
    @military_histories = MilitaryHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @military_histories }
    end
  end

  # GET /military_histories/1
  # GET /military_histories/1.json
  def show
    @military_history_show = MilitaryHistory.find(params[:id])
    @important_unit_assignment = ImportantUnitAssignment.new
    @military_school = MilitarySchool.new
    @received_military_award = ReceivedMilitaryAward.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @military_history }
    end
  end

  # GET /military_histories/new
  # GET /military_histories/new.json
  def new
    @military_history = MilitaryHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @military_history }
    end
  end

  # GET /military_histories/1/edit
  def edit
    @military_history = MilitaryHistory.find(params[:id])
  end

  # POST /military_histories
  # POST /military_histories.json
  def create
    @military_history = MilitaryHistory.new(params[:military_history])

    respond_to do |format|
      if @military_history.save
        format.html { redirect_to @military_history.personal_detail, notice: 'Military history was successfully created.' }
        format.json { render json: @military_history, status: :created, location: @military_history }
      else
        format.html { render action: "new" }
        format.json { render json: @military_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /military_histories/1
  # PUT /military_histories/1.json
  def update
    @military_history = MilitaryHistory.find(params[:id])

    respond_to do |format|
      if @military_history.update_attributes(params[:military_history])
        format.html { redirect_to @military_history.personal_detail, notice: 'Military history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @military_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /military_histories/1
  # DELETE /military_histories/1.json
  def destroy
    @military_history = MilitaryHistory.find(params[:id])
    @military_history.destroy

    respond_to do |format|
      format.html { redirect_to @military_history.personal_detail }
      format.json { head :no_content }
    end
  end
end
