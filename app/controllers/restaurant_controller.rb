class RestaurantController < ApplicationController
  skip_before_filter :verify_authenticity_token


  def index
    @restaurants=Restaurent.all
  end

  def new

  end

  def create
    @restaurant=Restaurent.new
    @restaurant.name=params[:name]
    @restaurant.save
    @restaurant.addresses.create(:location =>params[:address])
    redirect_to :action => "index"
  end

  def edit
    @restaurant =Restaurent.find_by_id(params[:id])

  end

  def update
     @restaurant =Restaurent.find_by_id(params[:id])
    @restaurant.name=params[:name]
    # @restaurant.addresses.update(:location =>params[:address])
     redirect_to :action => "index"
  end

  def show
    @restaurant =Restaurent.find_by_id(params[:id])
  end

  def destroy
    Restaurent.find_by_id(params[:id]).destroy
    redirect_to :action => "index"

  end


end
