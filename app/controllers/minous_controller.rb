class MinousController < ApplicationController
  before_action :set_minou, only: [:show, :edit, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: :show


  def index
    @minous = policy_scope(Minou).order(created_at: :desc)
  end

  def show
    @minou = Minou.find(params[:id])
    @rental = Rental.new
    @rentals = Rental.where(minou: @minou)
  end

  def new
    @minou = Minou.new
    authorize @minou
  end

  def create
    @minou = Minou.new(minou_params)
    @minou.user = current_user
    if @minou.save
      redirect_to minou_path(@minou)
    else
      render :new
    end
    authorize @minou
  end

  def edit
    authorize @minou
  end

  def update
    authorize @minou
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
