class SoiFormsController < ApplicationController
  # GET /soi_forms
  # GET /soi_forms.json
  def index
    @soi_forms = SoiForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @soi_forms }
    end
  end

  # GET /soi_forms/1
  # GET /soi_forms/1.json
  def show
    @soi_form = SoiForm.find(params[:id])
    @appreciation_merit = AppreciationMerit.new
    @commendation = Commendation.new
    @duty = Duty.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @soi_form }
    end
  end

  # GET /soi_forms/new
  # GET /soi_forms/new.json
  def new
    @soi_form = SoiForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @soi_form }
    end
  end

  # GET /soi_forms/1/edit
  def edit
    @soi_form = SoiForm.find(params[:id])
  end

  # POST /soi_forms
  # POST /soi_forms.json
  def create
    @soi_form = SoiForm.new(params[:soi_form])

    respond_to do |format|
      if @soi_form.save
        format.html { redirect_to @soi_form, notice: 'Soi form was successfully created.' }
        format.json { render json: @soi_form, status: :created, location: @soi_form }
      else
        format.html { render action: "new" }
        format.json { render json: @soi_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /soi_forms/1
  # PUT /soi_forms/1.json
  def update
    @soi_form = SoiForm.find(params[:id])

    respond_to do |format|
      if @soi_form.update_attributes(params[:soi_form])
        format.html { redirect_to @soi_form, notice: 'Soi form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @soi_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soi_forms/1
  # DELETE /soi_forms/1.json
  def destroy
    @soi_form = SoiForm.find(params[:id])
    @soi_form.destroy

    respond_to do |format|
      format.html { redirect_to personal_detail_path }
      format.json { head :no_content }
    end
  end
end
