class BookingsController < ApplicationController
  def index
    @kitchen = Kitchen.find(params[:kitchen_id])
    @bookings = @kitchen.bookings
  end

  def show
    @user = current_user
    @booking = Booking.find(params[:id])
    @review = Review.new
  end

  def new
    @booking = Booking.new
    @kitchen = Kitchen.find(params[:kitchen_id])
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
end
