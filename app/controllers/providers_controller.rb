class ProvidersController < ApplicationController
  include Pagy::Backend
  include Pagy::Frontend

  before_action :set_provider, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_banks, only: [:new, :edit]

  def index
    @pagy, @providers = pagy(Provider.all, items: 10)
  end

  def show

  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      redirect_to @provider, notice: t('providers.create.success')
    else
      Rails.logger.debug @provider.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @provider.update(provider_params)
      redirect_to @provider, notice: t('providers.update.success')
    else
      render :edit
    end
  end

  def destroy
    @provider.destroy
    flash[:success] = t('providers.destroy.success')
    redirect_to providers_url
  end

  private

  def set_provider
    @provider = Provider.find(params[:id])
  end

  def set_banks
    @banks = Bank.all
  end

  def provider_params
    params.require(:provider).permit(:name, :nit, :contact_person, :contact_number, :bank_id, :account_number, bank_attributes: [:name])
  end
end
