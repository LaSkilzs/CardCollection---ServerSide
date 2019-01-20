module Api
  module V1
    class CarsController < ApplicationController
      
      def index
        @cars = serializer.new(Car.all)
        render json: {status: 'SUCCESS', message: 'Loaded cars', data: @cars}, status: :ok
      end

      def show
        @car = serializer.new(Car.find(params[:id]))
        render json: {status: 'SUCCESS', message: "Loaded Car", data: @car}, status: :ok
      end


      private

      def serializer
        CarSerializer
      end

    end
  end
end