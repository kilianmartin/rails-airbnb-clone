class PagesController < ApplicationController
  def home
    @kitchen = Kitchen.new
  end
end
