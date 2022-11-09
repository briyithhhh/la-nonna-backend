# frozen_string_literal: true

class CardPolicy
  attr_reader :user, :card

  def initialize(user, card)
    @user = user
    @card = card
  end

  def index?
    user.has_role(:client)
  end
end