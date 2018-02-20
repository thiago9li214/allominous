class MinousController < ApplicationController
  def index
    @minous = Minou.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
