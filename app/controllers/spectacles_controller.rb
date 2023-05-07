class SpectaclesController < ApplicationController

  before_action :set_spectacle, only: %i[ show edit update destroy ]

  def index
    @spectacles = Spectacle.all
    @spectacle_cover = "cghl0ue5m127ziptd81qfomp7561"

  end

  def show
  end

  def new
    @spectacle = Spectacle.new
  end

  def edit
  end

  def create
    @spectacle = Spectacle.new(spectacle_params)
    respond_to do |format|
      if @spectacle.save
        format.html { redirect_to spectacle_url(@spectacle), notice: "spectacle was successfully created." }
        format.json { render :show, status: :created, location: @spectacle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @spectacle.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @spectacle.update(spectacle_params)
        format.html { redirect_to spectacle_url(@spectacle), notice: "spectacle was successfully updated." }
        format.json { render :show, status: :ok, location: @spectacle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @spectacle.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @spectacle.destroy

    respond_to do |format|
      format.html { redirect_to spectacles_url, notice: "Spectacle was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private

  def set_spectacle
    @spectacle = Spectacle.find(params[:id])
  end

  def spectacle_params
    params.require(:spectacle).permit(:title, :company, :description, photos: [])
  end


end
