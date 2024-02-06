class UsersController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @bank_count = Bank.count
    @provider_count = Provider.count
  end
end
