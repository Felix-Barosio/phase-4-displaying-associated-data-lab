class UsersController < ApplicationController

    def show
        user = User.find_by(params[:id])
        render json: user, except: [:created_at, :updated_at], include: {items: {except: [:user_id, :created_at, :updated_at]}}
    end
end
