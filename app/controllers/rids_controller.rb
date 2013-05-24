class RidsController < ApplicationController
  # GET /rids
  # GET /rids.json
  def index
    @rids = Rid.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rids }
    end
  end

  # GET /rids/1
  # GET /rids/1.json
  def show
    @rid = Rid.find(params[:id])
    @dependent = Dependent.new
    @civilian_military_award = CivilianMilitaryAward.new
    @promotion_demotion = PromotionDemotion.new
    @personal_detail = @rid.personal_detail

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rid }
    end
  end

  # GET /rids/new
  # GET /rids/new.json
  def new
    @rid = Rid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rid }
    end
  end

  # GET /rids/1/edit
  def edit
    @rid = Rid.find(params[:id])
  end

  # POST /rids
  # POST /rids.json
  def create
    @rid = Rid.new(params[:rid])

    respond_to do |format|
      if @rid.save
        RidsShort.create(rid_id: @rid.id)
        format.html { redirect_to @rid, notice: 'Rid was successfully created.' }
        format.json { render json: @rid, status: :created, location: @rid }
      else
        format.html { render action: "new" }
        format.json { render json: @rid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rids/1
  # PUT /rids/1.json
  def update
    @rid = Rid.find(params[:id])

    respond_to do |format|
      if @rid.update_attributes(params[:rid])
        format.html { redirect_to @rid, notice: 'Rid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rids/1
  # DELETE /rids/1.json
  def destroy
    @rid = Rid.find(params[:id])
    @rid.destroy

    respond_to do |format|
      format.html { redirect_to rids_url }
      format.json { head :no_content }
    end
  end
end
