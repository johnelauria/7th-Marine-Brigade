class CreditReputationsController < ApplicationController
  # GET /credit_reputations
  # GET /credit_reputations.json
  def index
    @credit_reputations = CreditReputation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @credit_reputations }
    end
  end

  # GET /credit_reputations/1
  # GET /credit_reputations/1.json
  def show
    @credit_reputation = CreditReputation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @credit_reputation }
    end
  end

  # GET /credit_reputations/new
  # GET /credit_reputations/new.json
  def new
    @credit_reputation = CreditReputation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @credit_reputation }
    end
  end

  # GET /credit_reputations/1/edit
  def edit
    @credit_reputation = CreditReputation.find(params[:id])
  end

  # POST /credit_reputations
  # POST /credit_reputations.json
  def create
    @credit_reputation = CreditReputation.new(params[:credit_reputation])

    respond_to do |format|
      if @credit_reputation.save
        format.html { redirect_to @credit_reputation.personal_detail, notice: 'Credit reputation was successfully created.' }
        format.json { render json: @credit_reputation, status: :created, location: @credit_reputation }
      else
        format.html { redirect_to @credit_reputation.personal_detail }
        format.json { render json: @credit_reputation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /credit_reputations/1
  # PUT /credit_reputations/1.json
  def update
    @credit_reputation = CreditReputation.find(params[:id])

    respond_to do |format|
      if @credit_reputation.update_attributes(params[:credit_reputation])
        format.html { redirect_to @credit_reputation.personal_detail, notice: 'Credit reputation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @credit_reputation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_reputations/1
  # DELETE /credit_reputations/1.json
  def destroy
    @credit_reputation = CreditReputation.find(params[:id])
    @credit_reputation.destroy

    respond_to do |format|
      format.html { redirect_to @credit_reputation.personal_detail }
      format.json { head :no_content }
    end
  end
end
