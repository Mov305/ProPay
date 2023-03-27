class Group < ApplicationRecord
    has_many :payments
    has_many :users, through: :payments
    validates :name, presence: true, length: { maximum: 50 }, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :icon, presence: true, length: { maximum: 50 }, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end
