
Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  devise_scope :user do
    authenticated :user do
      root 'users#dashboard', as: :authenticated_root
    end

    unauthenticated do
      root to: "pages#home"
    end
  end

  resources :banks
  resources :providers
end
