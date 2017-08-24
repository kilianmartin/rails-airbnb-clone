class BookingsController < ApplicationController
  def index
    @kitchen = Kitchen.find(params[:kitchen_id])
    @bookings = @kitchen.bookings
    @booking = Booking.new
    @dates_booked = prepare_bookings_datepicker(@bookings)
  end

  def show
    @user = current_user
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def new
    @booking = Booking.new
    @kitchen = Kitchen.find(params[:kitchen_id])
    @bookings = @kitchen.bookings
    @dates_booked = prepare_bookings_datepicker(@bookings)
  end

  def create
    @booking = Booking.create(booking_params)
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking.kitchen = Kitchen.find(params[:kitchen_id])

    if current_user
      @booking.user = User.find(current_user.id)
    else
      @booking.user = User.find(1)
    end

    @booking.save
    redirect_to kitchen_path(@kitchen)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
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
