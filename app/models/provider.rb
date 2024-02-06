class Provider < ApplicationRecord
  belongs_to :bank

  validates :name, presence: true, length: { maximum: 255 }
  validates :nit, presence: true, format: { with: /\A\d{9}-\d{1}?\z/, message: I18n.t('providers.errors.invalid_nit') }
  validates :contact_person, presence: true
  validates :contact_number, length: { maximum: 10 }
  validates :bank_name, presence: true
  validates :account_number, length: { maximum: 15 }

  accepts_nested_attributes_for :bank
  def bank_name
    bank.name if bank
  end

  def bank_name=(name)
    self.bank = Bank.find_or_create_by(name: name) if name.present?
  end
end
