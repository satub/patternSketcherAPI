module Api
  module V1
    class PatternsController < ApplicationController
      ### GET    /api/v1/patterns(.:format)          api/v1/patterns#index
      def index
        binding.pry
        render json: Pattern.all.order(:id)
      end

      ### GET    /api/v1/patterns/:id(.:format)      api/v1/patterns#show
      def show
        render json: Pattern.find_by(id: params[:id])
      end

      def new
        @pattern = Pattern.new
      end

      ###  POST   /api/v1/patterns(.:format)          api/v1/patterns#create
      def create
      end

      def edit
      end

      ###  PUT    /api/v1/patterns/:id(.:format)      api/v1/patterns#update
      def update
      end

      private

      def pattern_params
        params.require(:pattern).permit(:name, :width_loops, :height_rows, :repeat_x, :repeat_y)
      end
    end
  end
end
