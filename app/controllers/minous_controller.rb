class MinousController < ApplicationController
  def index
    @minous = Minou.all
  end

  def show
    @minou = Minou.find(params[:id])
  end

  def new

  end

  def edit
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def minou_params
    params.require(:minou).permit(:name, :size, :specie, :age, :personality, :description, :daily_price)
  end
end
