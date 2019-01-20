module Api
  module V1
    class MakesController < ApplicationController
      
      def index
        @makes = Make.all

        render json: {status: 'SUCCESS', message: 'Makes loaded', data: @makes}, status: :ok
      end

      def show 
        @make = Make.find(params[:id])
        
        render json: {status: 'SUCCESS', message: "Makes loaded", data: @make}, status: :ok
      end

    end
  end
end