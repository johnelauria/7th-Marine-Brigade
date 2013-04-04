class RidsShortsController < ApplicationController
  # GET /rids_shorts
  # GET /rids_shorts.json
  def index
    @rids_shorts = RidsShort.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rids_shorts }
    end
  end

  # GET /rids_shorts/1
  # GET /rids_shorts/1.json
  def show
    @rids_short = RidsShort.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rids_short }
    end
  end

  # GET /rids_shorts/new
  # GET /rids_shorts/new.json
  def new
    @rids_short = RidsShort.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rids_short }
    end
  end

  # GET /rids_shorts/1/edit
  def edit
    @rids_short = RidsShort.find(params[:id])
  end

  # POST /rids_shorts
  # POST /rids_shorts.json
  def create
    @rids_short = RidsShort.new(params[:rids_short])

    respond_to do |format|
      if @rids_short.save
        format.html { redirect_to @rids_short, notice: 'Rids short was successfully created.' }
        format.json { render json: @rids_short, status: :created, location: @rids_short }
      else
        format.html { render action: "new" }
        format.json { render json: @rids_short.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rids_shorts/1
  # PUT /rids_shorts/1.json
  def update
    @rids_short = RidsShort.find(params[:id])

    respond_to do |format|
      if @rids_short.update_attributes(params[:rids_short])
        format.html { redirect_to @rids_short, notice: 'Rids short was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rids_short.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rids_shorts/1
  # DELETE /rids_shorts/1.json
  def destroy
    @rids_short = RidsShort.find(params[:id])
    @rids_short.destroy

    respond_to do |format|
      format.html { redirect_to rids_shorts_url }
      format.json { head :no_content }
    end
  end
end
