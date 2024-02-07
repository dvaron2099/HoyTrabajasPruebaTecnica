class Bank < ApplicationRecord
  has_many :providers, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
end
