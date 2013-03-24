class ImportantUnitAssignmentsController < ApplicationController
  # GET /important_unit_assignments
  # GET /important_unit_assignments.json
  def index
    @important_unit_assignments = ImportantUnitAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @important_unit_assignments }
    end
  end

  # GET /important_unit_assignments/1
  # GET /important_unit_assignments/1.json
  def show
    @important_unit_assignment = ImportantUnitAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @important_unit_assignment }
    end
  end

  # GET /important_unit_assignments/new
  # GET /important_unit_assignments/new.json
  def new
    @important_unit_assignment = ImportantUnitAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @important_unit_assignment }
    end
  end

  # GET /important_unit_assignments/1/edit
  def edit
    @important_unit_assignment = ImportantUnitAssignment.find(params[:id])
  end

  # POST /important_unit_assignments
  # POST /important_unit_assignments.json
  def create
    @important_unit_assignment = ImportantUnitAssignment.new(params[:important_unit_assignment])

    respond_to do |format|
      if @important_unit_assignment.save
        format.html { redirect_to @important_unit_assignment.military_history.personal_detail, notice: 'Important unit assignment was successfully created.' }
        format.json { render json: @important_unit_assignment, status: :created, location: @important_unit_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @important_unit_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /important_unit_assignments/1
  # PUT /important_unit_assignments/1.json
  def update
    @important_unit_assignment = ImportantUnitAssignment.find(params[:id])

    respond_to do |format|
      if @important_unit_assignment.update_attributes(params[:important_unit_assignment])
        format.html { redirect_to @important_unit_assignment, notice: 'Important unit assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @important_unit_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /important_unit_assignments/1
  # DELETE /important_unit_assignments/1.json
  def destroy
    @important_unit_assignment = ImportantUnitAssignment.find(params[:id])
    @important_unit_assignment.destroy

    respond_to do |format|
      format.html { redirect_to @important_unit_assignment.military_history.personal_detail }
      format.json { head :no_content }
    end
  end
end
