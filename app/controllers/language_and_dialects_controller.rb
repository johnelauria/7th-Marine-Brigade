class LanguageAndDialectsController < ApplicationController
  # GET /language_and_dialects
  # GET /language_and_dialects.json
  def index
    @language_and_dialects = LanguageAndDialect.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @language_and_dialects }
    end
  end

  # GET /language_and_dialects/1
  # GET /language_and_dialects/1.json
  def show
    @language_and_dialect = LanguageAndDialect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @language_and_dialect }
    end
  end

  # GET /language_and_dialects/new
  # GET /language_and_dialects/new.json
  def new
    @language_and_dialect = LanguageAndDialect.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @language_and_dialect }
    end
  end

  # GET /language_and_dialects/1/edit
  def edit
    @language_and_dialect = LanguageAndDialect.find(params[:id])
  end

  # POST /language_and_dialects
  # POST /language_and_dialects.json
  def create
    @language_and_dialect = LanguageAndDialect.new(params[:language_and_dialect])

    respond_to do |format|
      if @language_and_dialect.save
        format.html { redirect_to @language_and_dialect.miscellaneou.personal_detail, notice: 'Language and dialect was successfully created.' }
        format.json { render json: @language_and_dialect, status: :created, location: @language_and_dialect }
      else
        format.html { render action: "new" }
        format.json { render json: @language_and_dialect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /language_and_dialects/1
  # PUT /language_and_dialects/1.json
  def update
    @language_and_dialect = LanguageAndDialect.find(params[:id])

    respond_to do |format|
      if @language_and_dialect.update_attributes(params[:language_and_dialect])
        format.html { redirect_to @language_and_dialect.miscellaneou.personal_detail, notice: 'Language and dialect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @language_and_dialect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_and_dialects/1
  # DELETE /language_and_dialects/1.json
  def destroy
    @language_and_dialect = LanguageAndDialect.find(params[:id])
    @language_and_dialect.destroy

    respond_to do |format|
      format.html { redirect_to @language_and_dialect.miscellaneou.personal_detail }
      format.json { head :no_content }
    end
  end
end
