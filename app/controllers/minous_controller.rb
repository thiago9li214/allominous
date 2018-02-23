class MinousController < ApplicationController
  before_action :set_minou, only: [:show, :edit, :destroy, :update]


  def index
    # Geoloc
    # recuperer address dans params
     params[:query] != nil
      @users = User.near(params[:query], 50)
      id = @users.map { |u| u.id }
      @minous = Minou.where(user_id: id)

      @markers = @minous.map do |minou|
        {
          lat: minou.user.latitude,
          lng: minou.user.longitude
        }
      end
    # else
    #   @minous = Minou.all

    #   @markers = @minous.map do |minou|
    #     {
    #       lat: minou.user.latitude,
    #       lng: minou.user.longitude
    #     }
    #   end
    # end
    # @minous = Minou.all
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
      redirect_to minouboard_path(@minou)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @minou.update(minou_params)
    redirect_to minous_path
  end

  def destroy
    @minou.destroy
    redirect_to minouboard_path
  end

  private

  def set_minou
    @minou = Minou.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def minou_params
    params.require(:minou).permit(:name, :size, :specie, :age, :personality, :description, :daily_price, :photo)
  end

end
