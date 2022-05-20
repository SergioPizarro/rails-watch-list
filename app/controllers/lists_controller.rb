class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end


end

def create
  @restaurant = Restaurant.new(restaurant_params)
  @restaurant.save
  # No need for app/views/restaurants/create.html.erb
  redirect_to restaurant_path(@restaurant)
end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :rating)
end
