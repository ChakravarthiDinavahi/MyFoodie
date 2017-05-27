class RestaurantController < ApplicationController
  def index
    @restaurants=Restaurent.all
  end
  def new
  end
  def create
    @restaurant=Restaurent.new
    @restaurant.name=params[:name]
    @restaurant.save
    @restaurant.addresses.create(:location =>params[:address] )
  end
  def edit
  end
  def update
  end
  def show
  end
  def destroy
  end


end
