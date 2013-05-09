class IdFormReservistsController < ApplicationController
  # GET /id_form_reservists
  # GET /id_form_reservists.json
  def index
    @id_form_reservists = IdFormReservist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @id_form_reservists }
    end
  end

  # GET /id_form_reservists/1
  # GET /id_form_reservists/1.json
  def show
    @id_form_reservist = IdFormReservist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @id_form_reservist }
    end
  end

  # GET /id_form_reservists/new
  # GET /id_form_reservists/new.json
  def new
    @id_form_reservist = IdFormReservist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @id_form_reservist }
    end
  end

  # GET /id_form_reservists/1/edit
  def edit
    @id_form_reservist = IdFormReservist.find(params[:id])
  end

  # POST /id_form_reservists
  # POST /id_form_reservists.json
  def create
    @id_form_reservist = IdFormReservist.new(params[:id_form_reservist])

    respond_to do |format|
      if @id_form_reservist.save
        format.html { redirect_to id_form_reservist_personal_detail_path(@id_form_reservist.personal_detail_id), notice: 'Id form reservist was successfully created.' }
        format.json { render json: @id_form_reservist, status: :created, location: @id_form_reservist }
      else
        format.html { render action: "new" }
        format.json { render json: @id_form_reservist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /id_form_reservists/1
  # PUT /id_form_reservists/1.json
  def update
    @id_form_reservist = IdFormReservist.find(params[:id])

    respond_to do |format|
      if @id_form_reservist.update_attributes(params[:id_form_reservist])
        format.html { redirect_to @id_form_reservist, notice: 'Id form reservist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @id_form_reservist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /id_form_reservists/1
  # DELETE /id_form_reservists/1.json
  def destroy
    @id_form_reservist = IdFormReservist.find(params[:id])
    @id_form_reservist.destroy

    respond_to do |format|
      format.html { redirect_to id_form_reservists_url }
      format.json { head :no_content }
    end
  end
end
