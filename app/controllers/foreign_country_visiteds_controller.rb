class ForeignCountryVisitedsController < ApplicationController
  # GET /foreign_country_visiteds
  # GET /foreign_country_visiteds.json
  def index
    @foreign_country_visiteds = ForeignCountryVisited.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @foreign_country_visiteds }
    end
  end

  # GET /foreign_country_visiteds/1
  # GET /foreign_country_visiteds/1.json
  def show
    @foreign_country_visited = ForeignCountryVisited.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @foreign_country_visited }
    end
  end

  # GET /foreign_country_visiteds/new
  # GET /foreign_country_visiteds/new.json
  def new
    @foreign_country_visited = ForeignCountryVisited.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @foreign_country_visited }
    end
  end

  # GET /foreign_country_visiteds/1/edit
  def edit
    @foreign_country_visited = ForeignCountryVisited.find(params[:id])
  end

  # POST /foreign_country_visiteds
  # POST /foreign_country_visiteds.json
  def create
    @foreign_country_visited = ForeignCountryVisited.new(params[:foreign_country_visited])

    respond_to do |format|
      if @foreign_country_visited.save
        format.html { redirect_to @foreign_country_visited.personal_detail, notice: 'Foreign country visited was successfully created.' }
        format.json { render json: @foreign_country_visited, status: :created, location: @foreign_country_visited }
      else
        format.html { redirect_to @foreign_country_visited.personal_detail }
        format.json { render json: @foreign_country_visited.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /foreign_country_visiteds/1
  # PUT /foreign_country_visiteds/1.json
  def update
    @foreign_country_visited = ForeignCountryVisited.find(params[:id])

    respond_to do |format|
      if @foreign_country_visited.update_attributes(params[:foreign_country_visited])
        format.html { redirect_to @foreign_country_visited.personal_detail, notice: 'Foreign country visited was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @foreign_country_visited.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foreign_country_visiteds/1
  # DELETE /foreign_country_visiteds/1.json
  def destroy
    @foreign_country_visited = ForeignCountryVisited.find(params[:id])
    @foreign_country_visited.destroy

    respond_to do |format|
      format.html { redirect_to @foreign_country_visited.personal_detail }
      format.json { head :no_content }
    end
  end
end
