class SurveylistsController < ApplicationController
  before_action :set_surveylist, only: [:show, :edit, :update, :destroy]

  # GET /surveylists
  # GET /surveylists.json
  def index
    @surveylists = Surveylist.all
  end

  # GET /surveylists/1
  # GET /surveylists/1.json
  def show
  end

  # GET /surveylists/new
  def new
    @surveylist = Surveylist.new
  end

  # GET /surveylists/1/edit
  def edit
  end

  # POST /surveylists
  # POST /surveylists.json
  def create
    @surveylist = Surveylist.new(surveylist_params)

    respond_to do |format|
      if @surveylist.save
        format.html { redirect_to @surveylist, notice: 'Surveylist was successfully created.' }
        format.json { render :show, status: :created, location: @surveylist }
      else
        format.html { render :new }
        format.json { render json: @surveylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surveylists/1
  # PATCH/PUT /surveylists/1.json
  def update
    respond_to do |format|
      if @surveylist.update(surveylist_params)
        format.html { redirect_to @surveylist, notice: 'Surveylist was successfully updated.' }
        format.json { render :show, status: :ok, location: @surveylist }
      else
        format.html { render :edit }
        format.json { render json: @surveylist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surveylists/1
  # DELETE /surveylists/1.json
  def destroy
    @surveylist.destroy
    respond_to do |format|
      format.html { redirect_to surveylists_url, notice: 'Surveylist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surveylist
      @surveylist = Surveylist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def surveylist_params
      params.require(:surveylist).permit(:name, :laptop, :os)
    end
end
