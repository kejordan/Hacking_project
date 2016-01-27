class SuperSecretInformationsController < ApplicationController
  before_action :set_super_secret_information, only: [:show, :edit, :update, :destroy]

  # GET /super_secret_informations
  # GET /super_secret_informations.json
  def index
    @super_secret_informations = SuperSecretInformation.all
  end

  # GET /super_secret_informations/1
  # GET /super_secret_informations/1.json
  def show
  end

  # GET /super_secret_informations/new
  def new
    @super_secret_information = SuperSecretInformation.new
  end

  # GET /super_secret_informations/1/edit
  def edit
  end

  # POST /super_secret_informations
  # POST /super_secret_informations.json
  def create
    @super_secret_information = SuperSecretInformation.new(super_secret_information_params)

    respond_to do |format|
      if @super_secret_information.save
        format.html { redirect_to @super_secret_information, notice: 'Super secret information was successfully created.' }
        format.json { render :show, status: :created, location: @super_secret_information }
      else
        format.html { render :new }
        format.json { render json: @super_secret_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /super_secret_informations/1
  # PATCH/PUT /super_secret_informations/1.json
  def update
    respond_to do |format|
      if @super_secret_information.update(super_secret_information_params)
        format.html { redirect_to @super_secret_information, notice: 'Super secret information was successfully updated.' }
        format.json { render :show, status: :ok, location: @super_secret_information }
      else
        format.html { render :edit }
        format.json { render json: @super_secret_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_secret_informations/1
  # DELETE /super_secret_informations/1.json
  def destroy
    @super_secret_information.destroy
    respond_to do |format|
      format.html { redirect_to super_secret_informations_url, notice: 'Super secret information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_super_secret_information
      @super_secret_information = SuperSecretInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def super_secret_information_params
      params.require(:super_secret_information).permit(:bank_details, :embarrassing_facts)
    end
end
