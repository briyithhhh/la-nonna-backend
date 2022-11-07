class Card < ApplicationRecord
  belongs_to :user

  encrypts :card_number, :cvc, :exp_month, :exp_year
end
