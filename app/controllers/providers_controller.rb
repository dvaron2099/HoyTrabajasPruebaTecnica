class ProvidersController < ApplicationController
  before_action :set_banks, only: [:new, :create]

  def index
    @provider = Provider.all
  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      flash[:success] = t('providers.create.success')
      redirect_to @provider
    else
      render :new
    end
  end

  private

  def set_banks
    @banks = Bank.all
  end

  def provider_params
    params.require(:provider).permit(:name, :nit, :contact_person, :contact_number, :bank_id, :account_number)
  end
end
