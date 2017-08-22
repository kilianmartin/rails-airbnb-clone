class BookingsController < ApplicationController
  def index
    @kitchen = Kitchen.find(params[:kitchen_id])
    @bookings = @kitchen.bookings
  end
  def new
    @booking = Booking.new
    @kitchen = Kitchen.find(params[:kitchen_id])
    # @user = User.find(params[:user_id])
    @user_id = 1

  end

  def create
    @booking = Booking.create(booking_params)
    @booking.kitchen = Kitchen.find(params[:kitchen_id])


    # USER: NEXT LINE COMMENT IS HOW WE WANT IT TO WORK IN THE END
    # @booking.user = User.find(params[:user_id])

    @booking.save
    byebug

    redirect_to kitchens_path
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :user_id)
  end
end
