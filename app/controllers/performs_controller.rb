class PerformsController < ApplicationController
  before_action :set_perform, only: %i[ show edit update destroy ]

  # GET /performs or /performs.json
  def index
    #@performs = Perform.all
    @performs = Perform.geocoded

      # The `geocoded` scope filters only performs with coordinates
    @markers = @performs.map do |perform|
      {
        lat: perform.latitude,
        lng: perform.longitude,

        info_window_html: render_to_string(partial: "info_window", locals: {perform: perform}),
        marker_html: render_to_string(partial: "marker", locals: {perform: perform}) # Pass the flat to the partial

      }


    end
  end

  # GET /performs/1 or /performs/1.json
  def show
  end

  # GET /performs/new
  def new
    @perform = Perform.new
  end

  # GET /performs/1/edit
  def edit
  end

  # POST /performs or /performs.json
  def create
    @perform = Perform.new(perform_params)

    respond_to do |format|
      if @perform.save
        format.html { redirect_to perform_url(@perform), notice: "Perform was successfully created." }
        format.json { render :show, status: :created, location: @perform }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @perform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performs/1 or /performs/1.json
  def update
    respond_to do |format|
      if @perform.update(perform_params)
        format.html { redirect_to perform_url(@perform), notice: "Perform was successfully updated." }
        format.json { render :show, status: :ok, location: @perform }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @perform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performs/1 or /performs/1.json
  def destroy
    @perform.destroy

    respond_to do |format|
      format.html { redirect_to performs_url, notice: "Perform was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perform
      @perform = Perform.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def perform_params
      params.require(:perform).permit(:name, :address)
    end
end
