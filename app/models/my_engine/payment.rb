module MyEngine
  class Payment < ApplicationRecord
    validates :amount, presence: true, numericality: true
    validates :currency, presence: true, inclusion: { in: %w[USD EUR GBP] }
    enum status: { pending: 0, paid: 1, failed: 2 }
  end
end
