class PersonalDetailsController < ApplicationController
  # GET /personal_details
  # GET /personal_details.json
  def index
    @q = PersonalDetail.search(params[:q])
    @personal_detail = @q.result(distinct: true)
    @personal_details = PersonalDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_details }
    end
  end

  # GET /personal_details/1
  # GET /personal_details/1.json
  def show
    @personal_detail = PersonalDetail.find(params[:id])
    @characteristic = @personal_detail.personal_characteristic
    @personal_characteristic = PersonalCharacteristic.new
    @marital_history = MaritalHistory.new
    @child = Child.new
    @family_history = FamilyHistory.new
    @family = @personal_detail.family_history
    @brothers_and_sister = BrothersAndSister.new
    @sibling = @family_history.brothers_and_sisters
    @place_of_residence = PlaceOfResidence.new
    @educational_background = EducationalBackground.new
    @military_history = MilitaryHistory.new
    @military_history_show = @personal_detail.military_history
    @important_unit_assignment = ImportantUnitAssignment.new
    @military_school = MilitarySchool.new
    @received_military_award = ReceivedMilitaryAward.new
    @employment = Employment.new
    @foreign_country_visited = ForeignCountryVisited.new
    @credit_reputation = CreditReputation.new
    @arrest_record_and_conduct = ArrestRecordAndConduct.new
    @general_information = GeneralInformation.new
    @organization = Organization.new
    @miscellaneou = Miscellaneou.new
    @promotion_demotion = PromotionDemotion.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_detail }
    end
  end

  # GET /personal_details/new
  # GET /personal_details/new.json
  def new
    @personal_detail = PersonalDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_detail }
    end
  end

  # GET /personal_details/1/edit
  def edit
    @personal_detail = PersonalDetail.find(params[:id])
  end

  # POST /personal_details
  # POST /personal_details.json
  def create
    @personal_detail = PersonalDetail.new(params[:personal_detail])

    respond_to do |format|
      if @personal_detail.save
        Rid.create(personal_detail_id: @personal_detail.id)
        SoiForm.create(personal_detail_id: @personal_detail.id)
        Aadt.create(personal_detail_id: @personal_detail.id, rank: @personal_detail.rank, name: @personal_detail.first_name, afpsn: @personal_detail.AFPSN)
        SecurityTagApplication.create(personal_detail_id: @personal_detail.id)
        format.html { redirect_to @personal_detail, notice: 'Personal detail was successfully created.' }
        format.json { render json: @personal_detail, status: :created, location: @personal_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_details/1
  # PUT /personal_details/1.json
  def update
    @personal_detail = PersonalDetail.find(params[:id])

    respond_to do |format|
      @personal_detail.rid.update_attributes(personal_detail_id: @personal_detail.id)
      @personal_detail.aadt.update_attributes(personal_detail_id: @personal_detail.id, rank: @personal_detail.rank, name: @personal_detail.first_name, afpsn: @personal_detail.AFPSN)
      if @personal_detail.update_attributes(params[:personal_detail])
        format.html { redirect_to @personal_detail, notice: 'Personal detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_details/1
  # DELETE /personal_details/1.json
  def destroy
    @personal_detail = PersonalDetail.find(params[:id])
    @personal_detail.destroy

    respond_to do |format|
      format.html { redirect_to personal_details_url }
      format.json { head :no_content }
    end
  end

  def vehicle_passcard
    @personal_detail = PersonalDetail.find(params[:id])
    @vehicle_passcard = VehiclePasscard.new
  end

  def id_form_reservist
    @personal_detail = PersonalDetail.find(params[:id])
    @id_form_reservist = IdFormReservist.new
  end
end
