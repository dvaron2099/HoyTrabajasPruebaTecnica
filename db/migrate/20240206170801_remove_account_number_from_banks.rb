class RemoveAccountNumberFromBanks < ActiveRecord::Migration[7.0]
  def change
    remove_column :banks, :account_number, :string
  end
end
