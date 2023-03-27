class Payment < ApplicationRecord
    belongs_to :user
    belongs_to :group
    validates :amount, presence: true, numericality: { greater_than: 0 }
end
