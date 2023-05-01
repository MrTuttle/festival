class SpectaclesController < ApplicationController

  def index
    @spectacles = Spectacle.all
  end
  def show
    @spectacle = Spectacle.find(params[:id])

    # (methode temporaire) retrouve les performs qui ont le même titre que spectacle
    # association à remplacer par un select des spectacles disponibles dans le _form perform
    @perform = Perform.where("title LIKE ?", @spectacle.title)
    # pas acces a company
  end
end
