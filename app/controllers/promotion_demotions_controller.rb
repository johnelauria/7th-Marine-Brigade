class PromotionDemotionsController < ApplicationController
  # GET /promotion_demotions
  # GET /promotion_demotions.json
  def index
    @promotion_demotions = PromotionDemotion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @promotion_demotions }
    end
  end

  # GET /promotion_demotions/1
  # GET /promotion_demotions/1.json
  def show
    @promotion_demotion = PromotionDemotion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @promotion_demotion }
    end
  end

  # GET /promotion_demotions/new
  # GET /promotion_demotions/new.json
  def new
    @promotion_demotion = PromotionDemotion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @promotion_demotion }
    end
  end

  # GET /promotion_demotions/1/edit
  def edit
    @promotion_demotion = PromotionDemotion.find(params[:id])
  end

  # POST /promotion_demotions
  # POST /promotion_demotions.json
  def create
    @promotion_demotion = PromotionDemotion.new(params[:promotion_demotion])

    respond_to do |format|
      if @promotion_demotion.save
        format.html { redirect_to :back, notice: 'Promotion demotion was successfully created.' }
        format.json { render json: @promotion_demotion, status: :created, location: @promotion_demotion }
      else
        format.html { render action: "new" }
        format.json { render json: @promotion_demotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /promotion_demotions/1
  # PUT /promotion_demotions/1.json
  def update
    @promotion_demotion = PromotionDemotion.find(params[:id])

    respond_to do |format|
      if @promotion_demotion.update_attributes(params[:promotion_demotion])
        format.html { redirect_to @promotion_demotion.rid, notice: 'Promotion demotion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @promotion_demotion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotion_demotions/1
  # DELETE /promotion_demotions/1.json
  def destroy
    @promotion_demotion = PromotionDemotion.find(params[:id])
    @promotion_demotion.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
end
