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
    @rentals = current_user.rentals
    # Calcul du solde de minoucoins
    @sold = 0
    @rentals.each { |rental| @sold += rental.rental_price }
  end

end
