class Family < ApplicationRecord
  has_many :ingredients, dependent: :destroy

  validates :family, presence: true
end
