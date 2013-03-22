class MaritalHistoriesController < ApplicationController
  # GET /marital_histories
  # GET /marital_histories.json
  def index
    @marital_histories = MaritalHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @marital_histories }
    end
  end

  # GET /marital_histories/1
  # GET /marital_histories/1.json
  def show
    @marital_history = MaritalHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @marital_history }
    end
  end

  # GET /marital_histories/new
  # GET /marital_histories/new.json
  def new
    @marital_history = MaritalHistory.new
    @child = Child.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @marital_history }
    end
  end

  # GET /marital_histories/1/edit
  def edit
    @marital_history = MaritalHistory.find(params[:id])
  end

  # POST /marital_histories
  # POST /marital_histories.json
  def create
    @marital_history = MaritalHistory.new(params[:marital_history])

    respond_to do |format|
      if @marital_history.save
        format.html { redirect_to PersonalDetail.find(@marital_history.personal_detail_id), notice: 'Marital history was successfully created.' }
        format.json { render json: @marital_history, status: :created, location: @marital_history }
      else
        format.html { render action: "new" }
        format.json { render json: @marital_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /marital_histories/1
  # PUT /marital_histories/1.json
  def update
    @marital_history = MaritalHistory.find(params[:id])

    respond_to do |format|
      if @marital_history.update_attributes(params[:marital_history])
        format.html { redirect_to PersonalDetail.find(@marital_history.personal_detail_id), notice: 'Marital history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @marital_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marital_histories/1
  # DELETE /marital_histories/1.json
  def destroy
    @marital_history = MaritalHistory.find(params[:id])
    @marital_history.destroy

    respond_to do |format|
      format.html { redirect_to marital_histories_url }
      format.json { head :no_content }
    end
  end
end
