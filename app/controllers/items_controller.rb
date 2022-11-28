class ItemsController < ApplicationController

  def index
    items = Item.all.order(price: :desc)
    render json: items, include: :user
  end


end
