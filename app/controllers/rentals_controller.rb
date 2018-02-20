class RentalsController < ApplicationController

  def create
    @rental = Rental.new(rental_params)
    # Add the corresponding user and minou to rental
    @rental.user = current_user
    minou = Minou.find(params[:minou_id])
    @rental.minou = minou
    # Rental price calculus a faire quand les date picker seront done
    # @rental.rental_price = minou.daily_price * ( params[:rental][:end_date] - params[:rentals][:begin_date] )
    if @rental.save
      redirect_to minou_path(minou)
    else
      render "minous/show"
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def rental_params
    params.require(:rental).permit(:begin_date, :end_date)
  end
end