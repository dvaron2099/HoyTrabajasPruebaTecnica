class DashboardPresenter
  def initialize(user)
    @user = user
  end

  def providers_count
    @user.providers.count
  end

  def banks_count
    @user.banks.count
  end
end
