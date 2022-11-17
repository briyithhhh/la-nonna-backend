class CardsController < ApplicationController
  before_action :authorize_request

  def index
    @cards = Card.all
    render json: @current_user.cards, status: :ok
  end

  def update
    if @card.update(card_params)
      render json: @card, status: :ok
    else
      render json: { errors: @card.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @card.destroy
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:card_number, :cvc, :exp_month, :exp_year)
  end
end
