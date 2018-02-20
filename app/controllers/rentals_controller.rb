class RentalsController < ApplicationController

  # before_action :set_minou, only: [:show, :edit, :destroy]


  # def index
  #   @minous = Minou.all
  # end

  # def show
  #   @minou = Minou.find(params[:id])
  #   @rental = Rental.new
  # end

  # def new
  #   @minou = Minou.new
  # end

  def create
    @rental = Rental.new(rental_params)
    # Add the corresponding user and minou to rental
    @rental.user = current_user
    minou = Minou.find(params[:minou_id])
    @rental.minou = minou
    # Rental price calculus
    # @rental.rental_price = minou.daily_price * ( params[:rental][:end_date] - params[:rentals][:begin_date] )
    if @rental.save
      redirect_to minou_path(minou)
    else
      render "minous/show"
    end
  end

  # def edit
  # end

  # def destroy
  #   @minou.destroy
  #   redirect_to minous_path
  # end

  private

  # def set_minou
  #   @minou = Minou.find(params[:id])
  # end

  # Never trust parameters from the scary internet, only allow the white list through.
  def rental_params
    params.require(:rental).permit(:begin_date, :end_date)
  end
end
