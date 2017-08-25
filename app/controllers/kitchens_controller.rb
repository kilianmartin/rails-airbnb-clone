class KitchensController < ApplicationController
  def index
    @kitchens = Kitchen.all
    @kitchens_map = Kitchen.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@kitchens_map) do |kitchen, marker|
      marker.lat kitchen.latitude
      marker.lng kitchen.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @kitchen = Kitchen.find(params[:id])

    @booking = Booking.new
    @bookings = @kitchen.bookings

    @dates_booked = prepare_bookings_datepicker(@bookings)
  end

  def prepare_bookings_datepicker(bookings)
   dates_all = []
   bookings.each do |booking|
     dates_current = (booking.start_date..booking.end_date).map{ |date| date.strftime("%y %b %d") }
     dates_all = dates_all.concat(dates_current).uniq.sort_by { |date| date }
   end
   # need to do (DATE -> STRING -> DATE -> STRING) conversions to properly sort...
   dates_all = dates_all.map{ |date| Date.strptime(date, "%y %b %d") }
   dates_all.map{ |date| date.strftime("%d/%m/%Y") }.to_json.html_safe
 end

end


