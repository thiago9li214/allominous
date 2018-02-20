class MinousController < ApplicationController
  before_action :set_minou, only: [:show, :edit, :destroy]


  def index
    @minous = Minou.all
  end

  def show
    @minou = Minou.find(params[:id])
    @rental = Rental.new
    @rentals = Rental.where(minou: @minou)
  end

  def new
    @minou = Minou.new
  end

  def create
    @minou = Minou.new(minou_params)
    @minou.user = current_user
    if @minou.save
      redirect_to minou_path(@minou)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @minou.destroy
    redirect_to minous_path
  end

  private

  def set_minou
    @minou = Minou.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def minou_params
    params.require(:minou).permit(:name, :size, :specie, :age, :personality, :description, :daily_price)
  end

end
