class ItemsController < ApplicationController

    def index

        item = Item.all
        render json: item, except: [:created_at, :updated_at], include: {user: {except: [:created_at, :updated_at]}}

    end
end
