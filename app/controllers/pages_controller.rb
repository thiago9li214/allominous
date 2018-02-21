class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def minouboard
    @minous = current_user.minous
    @rentals = current_user.rentals
  end
end
