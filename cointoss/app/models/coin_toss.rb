class CoinToss < ApplicationRecord
    
  attribute :is_coin_tossed, :boolean, default: false
  # validates :sku, presence: true, length: { minimum: 5, maximum: 14 }
  # validates :price, presence: true, numericality: { float: true }
  scope :filter_by_status, -> (is_coin_tossed) {where is_coin_tossed: is_coin_tossed}
end