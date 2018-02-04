Rails.application.routes.draw do
  devise_for :users, controllers: {
    :omniauth_callbacks => "users/omniauth_callbacks",
    :registrations => "users/registrations"
  }

  post "/sign_up_validation", to: "users/omniauth_callbacks#sign_up_validation"

  authenticated :user do
    root 'home#index'
  end

  unauthenticated :user do
    devise_scope :user do
      root to: "devise/sessions#new"
    end
  end
end
