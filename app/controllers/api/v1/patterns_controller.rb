module Api
  module V1
    class PatternsController < ApplicationController
      ### GET    /api/v1/patterns(.:format)          api/v1/patterns#index
      def index
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
        binding.pry
        @pattern = Pattern.create(pattern_params)
        render json: @pattern
      end

      def edit
      end

      ###  PUT    /api/v1/patterns/:id(.:format)      api/v1/patterns#update
      def update
        # binding.pry
        @pattern = Pattern.find_by(id: params[:id])
        @pattern.update(pattern_params)
        errs = @pattern.errors
        if errs.empty?
          render json: @pattern
        else
          render json: errs, layout: false, status: 422
        end
      end

      private

      def pattern_params
        params.require(:pattern).permit(:name, :width_loops, :height_rows, :repeat_x, :repeat_y, stitches: [:id, :loop_number, :row_number, :loop_id, :pattern_id, :side])
      end

    end
  end
end
