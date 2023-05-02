class SpectaclesController < ApplicationController

  before_action :set_spectacle, only: %i[ show edit update destroy ]

  def index
    @spectacles = Spectacle.all
  end

  def show
    #@spectacle = Spectacle.find(params[:id])

    # (methode temporaire) retrouve les performs qui ont le même titre que spectacle
    # association à remplacer par un select des spectacles disponibles dans le _form perform
    #@perform = Perform.where("title LIKE ?", @spectacle.title)
    # pas acces a company
  end
  def new
    @spectacle = Spectacle.new
  end

  def edit
  end

  def create
    @spectacle = Spectacle.new(spectacle_params)
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
    params.require(:spectacle).permit(:title, :description, photos: [])
  end


end
