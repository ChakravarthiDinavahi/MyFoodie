class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:edit, :update, :destroy, :show]

  def menu


  end
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
          # @restaurant.items << Item.where(id: params[:item_ids])
          params[:item_ids].zip(params[:item_cost]).each do |iid, cost|
            r=@restaurant.restaurant_items.new()
            r.item_id=iid
            r.cost=cost
            r.save
          end
           format.html {redirect_to :action => "index", notice: 'Restaurant successfully created.' }
        else
          format.html {redirect_to :action => "index", notice: 'Restaurant not  successfully created.' }
        end
      end
    end

    def edit
      @restaurant_ids=@restaurant.restaurant_items.collect{|i| i.item_id}
      # @restaurant_items=cost

      # @restaurant_items=[]
      #     @restaurant.restaurant_items.all.each do |r|
      #       @temper={}
      #       @temper[:cost] = r.cost
      #       @temper[:item] = r.item.name
      #        @restaurant_items << @temper
      #     end

    end

    def update
      @restaurant.update(restaurant_params)
      respond_to do |format|
        if @restaurant.save
          params[:item_ids].zip(params[:item_cost]).each do |iid, cost|
            r=@restaurant.restaurant_items.new()
            r.item_id=iid
            r.cost=cost
            r.first_or_create!
          end
          format.html {redirect_to :action => "index", notice: 'Item successfully created.' }
        else
          format.html {redirect_to :action => "index", notice: 'Item not  successfully created.' }
        end
      end
    end

    def show
      @restaurant_items=[]
          @restaurant.restaurant_items.each do |r|
            @temper={}
            @temper[:cost] = r.cost
            @temper[:item] = r.item.name
    	       @restaurant_items << @temper
          end
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
