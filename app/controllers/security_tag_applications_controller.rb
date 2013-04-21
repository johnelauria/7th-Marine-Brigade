class SecurityTagApplicationsController < ApplicationController
  # GET /security_tag_applications
  # GET /security_tag_applications.json
  def index
    @security_tag_applications = SecurityTagApplication.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @security_tag_applications }
    end
  end

  # GET /security_tag_applications/1
  # GET /security_tag_applications/1.json
  def show
    @security_tag_application = SecurityTagApplication.find(params[:id])

    respond_to do |format|
      format.html {
        if @security_tag_application.office_division.nil?
          redirect_to edit_security_tag_application_path(@security_tag_application)
        end
      }
      format.json { render json: @security_tag_application }
    end
  end

  # GET /security_tag_applications/1/edit
  def edit
    @security_tag_application = SecurityTagApplication.find(params[:id])
  end

  # POST /security_tag_applications
  # POST /security_tag_applications.json
  def create
    @security_tag_application = SecurityTagApplication.new(params[:security_tag_application])

    respond_to do |format|
      if @security_tag_application.save
        format.html { redirect_to @security_tag_application, notice: 'Security tag application was successfully created.' }
        format.json { render json: @security_tag_application, status: :created, location: @security_tag_application }
      else
        format.html { render action: "new" }
        format.json { render json: @security_tag_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /security_tag_applications/1
  # PUT /security_tag_applications/1.json
  def update
    @security_tag_application = SecurityTagApplication.find(params[:id])

    respond_to do |format|
      if @security_tag_application.update_attributes(params[:security_tag_application])
        format.html { redirect_to @security_tag_application.personal_detail, notice: 'Security tag application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @security_tag_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /security_tag_applications/1
  # DELETE /security_tag_applications/1.json
  def destroy
    @security_tag_application = SecurityTagApplication.find(params[:id])
    @security_tag_application.destroy

    respond_to do |format|
      format.html { redirect_to @security_tag_application.personal_detail }
      format.json { head :no_content }
    end
  end
end
