class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all 

        render json: UserSerializer.new(@users)
    end

    def show
        @user = User.find(params[:id])

        render json: UserSerializer.new(@user)
    end

    def create
        @user = User.new(user_params)

        if @user.save
          session[:user_id] = @user.id 
          render json: UserSerializer.new(@user), status: :created
        else
          resp = {
            error: @user.errors.full_messages.to_sentence
            flash.alert = "Make sure e-mail is properly formatted."
          }
          render json: resp, status: :unprocessable_entity
        end
      end

    def update
        if @user.update(user_params)
          render json: @user
        else
          render json: @user.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @user.destroy
    end

    private 

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :username, :password, :img_url)
    end
end
