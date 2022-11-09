class Card < ApplicationRecord
  belongs_to :user

  # Validations
  validates :card_number, :cvc, :exp_month, :exp_year, presence: true
  validates :cvc, length: { is: 3 }
  validates :exp_month, length: { is: 2 }
  validates :exp_year, length: { is: 2 }

  # Encrypt card
  encrypts :card_number, :cvc, :exp_month, :exp_year, deterministic: true

  # Methods
  def exp_date
    "#{exp_month}/#{exp_year}"
  end

  def last_four
    card_number.to_s[-4..-1]
  end 

  def card_type
    case card_number.to_s[0]
    when "3"
      "American Express"
    when "4"
      "Visa"
    when "5"
      "Mastercard"
    when "6"
      "Discover"
    end
  end

  def card_image
    case card_type
    when "Visa"
      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Visa_2021.svg/1200px-Visa_2021.svg.png"
    when "Mastercard"
      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/2560px-MasterCard_Logo.svg.png"
    when "American Express"
      "https://w7.pngwing.com/pngs/980/764/png-transparent-logo-brand-american-express-product-nyse-axp-bank-blue-angle-text.png"
    when "Discover"
      "https://e7.pngegg.com/pngimages/333/890/png-clipart-discover-card-discover-financial-services-credit-card-debit-card-payment-card-number-credit-card-label-text-thumbnail.png"
    end
  end

  # Rails Admin
  rails_admin do
    list do
      field :card_type
      field :last_four
      field :exp_date
      field :user
    end
  end
end