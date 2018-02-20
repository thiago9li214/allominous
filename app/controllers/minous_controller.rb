class MinousController < ApplicationController
  before_action :set_minou, only: [:show, :edit]


  def index
    @minous = Minou.all
  end

  def show
  end

  def new
    @minou = Minou.new
  end

  def edit
  end

  private

  def set_minou
    @minou = Minou.find(params[:id])
  end

end
