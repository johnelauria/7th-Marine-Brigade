class FamilyHistoriesController < ApplicationController
  # GET /family_histories
  # GET /family_histories.json
  def index
    @family_histories = FamilyHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @family_histories }
    end
  end

  # GET /family_histories/1
  # GET /family_histories/1.json
  def show
    @family_history = FamilyHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family_history }
    end
  end

  # GET /family_histories/new
  # GET /family_histories/new.json
  def new
    @family_history = FamilyHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family_history }
    end
  end

  # GET /family_histories/1/edit
  def edit
    @family_history = FamilyHistory.find(params[:id])
  end

  # POST /family_histories
  # POST /family_histories.json
  def create
    @family_history = FamilyHistory.new(params[:family_history])

    respond_to do |format|
      if @family_history.save
        format.html { redirect_to PersonalDetail.find(@family_history.personal_detail_id), notice: 'Family history was successfully created.' }
        format.json { render json: @family_history, status: :created, location: @family_history }
      else
        format.html { render action: PersonalDetail.find(@family_history.personal_detail_id) }
        format.json { render json: @family_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /family_histories/1
  # PUT /family_histories/1.json
  def update
    @family_history = FamilyHistory.find(params[:id])

    respond_to do |format|
      if @family_history.update_attributes(params[:family_history])
        format.html { redirect_to PersonalDetail.find(@family_history.personal_detail_id), notice: 'Family history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_histories/1
  # DELETE /family_histories/1.json
  def destroy
    @family_history = FamilyHistory.find(params[:id])
    @family_history.destroy

    respond_to do |format|
      format.html { redirect_to family_histories_url }
      format.json { head :no_content }
    end
  end
end
