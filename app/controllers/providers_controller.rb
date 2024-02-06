class ProvidersController < ApplicationController
  include Pagy::Backend
  include Pagy::Frontend

  before_action :set_provider, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :edit, :update, :destroy]

  def index
    @pagy, @providers = pagy(Provider.all, items: 10)
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
