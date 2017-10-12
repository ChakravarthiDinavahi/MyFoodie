class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:edit, :update, :destroy, :show]

    def index
      @restaurants=Restaurant.all
    end

    def new
      @restaurant=Restaurant.new
      # @restaurant_address=@restaurant.addresses.new
    end

    def create
      @restaurant=Restaurant.new(restaurant_params)
      respond_to do |format|
        if @restaurant.save
           format.html {redirect_to :action => "index", notice: 'Restaurant successfully created.' }
        else
          format.html {redirect_to :action => "index", notice: 'Restaurant not  successfully created.' }
        end
      end
    end

    def edit

    end

    def update
      @restaurant.update(restaurant_params)
      respond_to do |format|
        if @restaurant.save
          format.html {redirect_to :action => "index", notice: 'Item successfully created.' }
        else
          format.html {redirect_to :action => "index", notice: 'Item not  successfully created.' }
        end
      end
    end

    def show
      @restaurant
      @items=@restaurant.items
    end

    def destroy
      @restaurant.destroy
      redirect_to :action => "index"

    end


    private

      def set_restaurant
        @restaurant = Restaurant.find(params[:id])
      end

      def restaurant_params
        params.require(:restaurant).permit(:name, addresses_attributes: [:id, :location, :_destroy])
      end

end
