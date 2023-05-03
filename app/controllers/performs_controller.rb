class PerformsController < ApplicationController
  before_action :set_perform, only: %i[ show edit update destroy ]
  before_action :set_spectacle, only: %i[ new create update destroy ]


  def top
    @performs = Perform.where(collected: true)

    @markers = @performs.map do |perform|
      {
        lat: perform.latitude,
        lng: perform.longitude,

        info_window_html: render_to_string(partial: "info_window", locals: {perform: perform}), # Pass the perform to the partial
        marker_html: render_to_string(partial: "marker", locals: {perform: perform}), # Pass the perform to the partial
        start_time_html: render_to_string(partial: "start_time"), locals: {perform: perform}
      }
    end
  end


  # GET /performs or /performs.json
  def index
    @performs = Perform.all

    #@performs = Perform.geocoded
    # The `geocoded` scope filters only performs with coordinates

    #@collecteds = Perform.where(collected: true)
    # collected == true filter

    @markers = @performs.map do |perform|
      {
        lat: perform.latitude,
        lng: perform.longitude,

        info_window_html: render_to_string(partial: "info_window", locals: {perform: perform}), # Pass the perform to the partial
        marker_html: render_to_string(partial: "marker", locals: {perform: perform}), # Pass the perform to the partial
        start_time_html: render_to_string(partial: "start_time"), locals: {perform: perform}
      }

    end
  end

  # GET /performs/1 or /performs/1.json
  def show
    #@perform.start_time.strftime('%I:%M | %a %d %B')``
  end

  # GET /performs/new
  def new
    #@spectacle = Spectacle.find(params[:spectacle_id])
    @perform = Perform.new
    @perform.spectacle = @spectacle
  end

  # GET /performs/1/edit
  def edit
  end

  # POST /performs or /performs.json
  def create
    raise
    #build perform with params

    @perform = Perform.new(perform_params)

    #find spectacle useless ? already set défine in set spectacle
    #@spectacle = Spectacle.find(params[:spectacle_id])

    # associe perform et spectacle à la creation du perform
    @perform.spectacle = @spectacle
    @perform.save

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

    def set_spectacle
      @spectacle = Spectacle.find(params[:spectacle_id])
    end

    def set_perform
      @perform = Perform.find(params[:id])#params available in class methods define in before_action
      #@debut = @perform.start_time.strftime('%I:%M | %a %d %^b')#work only in a show instance


      # si start_time est different de nil tu formate la date, sinon tu fais rien - @date ne marche que pour show
      @date = @perform.start_time != nil ? (@perform.start_time.strftime('%I:%M | %a %d %^b')) : ()



    end

    # Only allow a list of trusted parameters through.
    def perform_params
      params.require(:perform).permit(:spectacle_id, :company, :address, :start_time, :collected)
    end
end
