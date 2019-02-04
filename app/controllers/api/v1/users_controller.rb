module Api
  module V1
    class UsersController < ApplicationController

      def index 
        @users = User.all
        render json: {data: @users}
      end

      def login
        @user = User.find_by(usersname: params[:usersname])
        if @user && @user.authenticate(params[:password])
          render json: {data: @user}
        else
          render json: {error: 'username/password invalid'}
        end
      end







    end
  end
end
