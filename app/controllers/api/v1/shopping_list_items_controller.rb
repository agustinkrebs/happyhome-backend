module Api
  module V1
    class ShoppingListItemsController < ApplicationController
      before_action :set_shopping_list_item, only: [:show, :update, :destroy]

      # GET /shopping_list_items
      def index
        @shopping_list_items = ShoppingListItem.all

        render json: @shopping_list_items
      end

      # GET /shopping_list_items/1
      def show
        render json: @shopping_list_item
      end

      # POST /shopping_list_items
      def create
        @shopping_list_item = ShoppingListItem.new(shopping_list_item_params)

        if @shopping_list_item.save
          render json: @shopping_list_item, status: :created, location: @shopping_list_item
        else
          render json: @shopping_list_item.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /shopping_list_items/1
      def update
        if @shopping_list_item.update(shopping_list_item_params)
          render json: @shopping_list_item
        else
          render json: @shopping_list_item.errors, status: :unprocessable_entity
        end
      end

      # DELETE /shopping_list_items/1
      def destroy
        @shopping_list_item.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_shopping_list_item
          @shopping_list_item = ShoppingListItem.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def shopping_list_item_params
          params.require(:shopping_list_item).permit(:name, :quantity, :comment, :shopping_list_id, :family_user_id)
        end
    end
  end
end
