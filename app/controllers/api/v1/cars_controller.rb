module Api
  module V1
    class CarsController < ApplicationController
      
      def index
        @cars = Car.all
        render json: {status: 'SUCCESS', message: 'Loaded cars', data: @cars}, status: :ok
      end

      def show
        @car = Car.find(params[:id])
        render json: {status: 'SUCCESS', message: "Loaded Car", data: @car}, status: :ok
      end



    end
  end
end