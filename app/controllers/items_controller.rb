class ItemsController < ApplicationController

before_action :set_item, only: [:edit, :update, :destroy, :show]

  def index
    @items=Item.all
  end

  def new
    @item=Item.new

  end

  def create
    @item = Item.new(item_params)
    respond_to do |format|
      if @item.save
        format.html {redirect_to :action => "index", notice: 'Item successfully created.' }
      else
        format.html {redirect_to :action => "index", notice: 'Item not  successfully created.' }
      end
    end
  end

  def edit

  end

  def update
    @item.update(item_params)
    respond_to do |format|
      if @item.save
        format.html {redirect_to :action => "index", notice: 'Item successfully created.' }
      else
        format.html {redirect_to :action => "index", notice: 'Item not  successfully created.' }
      end
    end
  end

  def show

  end

  def destroy
    @item.destroy
    redirect_to :action => "index"
  end

  private
  
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name)
  end


end
