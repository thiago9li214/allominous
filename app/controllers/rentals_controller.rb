class RentalsController < ApplicationController

  def create
    @rental = Rental.new(rental_params)
    # Add the corresponding user and minou to rental
    @rental.user = current_user
    minou = Minou.find(params[:minou_id])
    @rental.minou = minou
    @rental.begin_date = Date.parse(params[:rental][:begin_date][0..9])
    @rental.end_date = Date.parse(params[:rental][:end_date])
    # Rental price calculus
    @rental.rental_price = minou.daily_price * ( @rental.end_date - @rental.begin_date ).to_i
    # If save ok, redirect to minouboard
    if @rental.save
      redirect_to emprunts_path
    else
      render "minous/show"
    end
  end

   def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to emprunts_path
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def rental_params
    params.require(:rental).permit(:begin_date, :end_date)
  end
end
