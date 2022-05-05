class ItemsController < ApplicationController

  def index
    items = Item.all
    render json: items, include: :user
  end

  def create 
    item = Item.create(item_params)
    render json: item, status :created
  end

  private 

  def item_params
    params.permit(:name, :description, :price, :user_id)
  end

end
