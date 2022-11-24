class CartsController < ApplicationController
  def index
    @carts = Cart.all # @current_user.cart
    render json: @carts, include: [:platillos, :user ], status: :ok
  end

  def update
    @carts = @current_user.cart
    if @carts.carts_platillos.update(carts_params)
      render json: @carts, status: :ok
    else
      render json: { errors: @carts.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def admin_update
    @carts = Cart.find(params[:id]) 
    if @carts.carts_platillos.update(carts_params)
      render json: @carts, status: :ok
    else
      render json: { errors: @carts.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete
  end

  private

  def carts_params
    params.permit(:user_id, :product_id, :quantity)
  end
end
