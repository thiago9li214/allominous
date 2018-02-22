class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def minouboard
    @minous = current_user.minous
  end

  def emprunts
    @rentals = current_user.rentals
  end

  def historique
  end

end
