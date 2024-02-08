class Provider < ApplicationRecord
  belongs_to :bank

  validates :name, presence: true, length: { maximum: 255 }
  validates :nit, presence: true, format: { with: /\A\d{9}-?\d?\z/, message: I18n.t('providers.errors.invalid_nit') }

  validates :contact_person, presence: true
  validates :contact_number, length: { maximum: 10 }
  validates :bank, presence: true

  accepts_nested_attributes_for :bank
  def bank_name
    bank.name if bank
  end
end
