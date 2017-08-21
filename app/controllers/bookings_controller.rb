class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking = Bookings.new(booking_params)


  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
