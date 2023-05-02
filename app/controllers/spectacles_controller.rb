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

  private

  def set_spectacle
    @spectacle = Spectacle.find(params[:id])
  end


end
