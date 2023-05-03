class PagesController < ApplicationController
  def home

      #@performs = Perform.all
      @performs = Perform.geocoded

        # The `geocoded` scope filters only performs with coordinates
      @markers = @performs.map do |perform|
        {
          lat: perform.latitude,
          lng: perform.longitude,

          info_window_html: render_to_string(partial: "performs/info_window", locals: {perform: perform}), # Pass the perform to the partial
          marker_html: render_to_string(partial: "performs/marker", locals: {perform: perform}), # Pass the perform to the partial
          #start_time_html: render_to_string(partial: "performs/start_time"), locals: {perform: perform}
        }


      end

  end
end
