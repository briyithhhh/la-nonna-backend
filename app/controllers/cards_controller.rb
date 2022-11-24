class CardsController < ApplicationController
  before_action :authorize_request

  # GET /cards
  def index
    @cards = @current_user.cards.includes(:user)
    render json: @cards, status: :ok
  end

  # GET /cards/num
  def count_cards 
    if authorize_role(@current_user.role.name)
      @cards = Card.all
      render json: @cards.count, status: :ok
    else
      @cards = @current_user.cards
      render json: @cards.count, status: :ok
    end
  end

  # PUT/PATCH /cards/{id}
  def update
    if @card.update(card_params) 
      render json: @card, status: :ok
    else
      render json: { errors: @card.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /cards/{id}
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
