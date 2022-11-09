class CardsController < ApplicationController
  def index
  end

  def update
  end

  def destroy
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:card_number, :cvc, :exp_month, :exp_year)
  end
end
