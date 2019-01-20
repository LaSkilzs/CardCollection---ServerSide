module Api
  module V1
    class MakesController < ApplicationController

      def index
       
        @makes = serializer.new(Make.all)

        render json: {status: 'SUCCESS', message: 'Makes loaded', data: @makes}, status: :ok
      end

      def show 
        @make = serializer.new(Make.find(params[:id]))
        
        render json: {status: 'SUCCESS', message: "Makes loaded", data: @make}, status: :ok
      end

      private

      def serializer
        MakeSerializer
      end

    end
  end
end