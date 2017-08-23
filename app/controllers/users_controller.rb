class UsersController < ApplicationController

  def show
    @user = current_user
    @bookings = Booking.where(:user_id == @user)
  end

end
